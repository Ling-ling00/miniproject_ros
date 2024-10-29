/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <rcl/rcl.h>
#include <rcl/error_handling.h>
#include <rclc/rclc.h>
#include <rclc/executor.h>
#include <uxr/client/transport.h>
#include <rmw_microxrcedds_c/config.h>
#include <rmw_microros/rmw_microros.h>
#include <micro_ros_utilities/string_utilities.h>
#include <math.h>

#include <imu_interfaces/srv/imu_calibration.h>
#include <sensor_msgs/msg/imu.h>
#include <geometry_msgs/msg/twist.h>
#include <std_srvs/srv/set_bool.h>
#include <std_srvs/srv/empty.h>
#include <std_msgs/msg/bool.h>
#include <mpu6050.h>
#include "KalmanSensorFusion.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
typedef StaticTask_t osStaticThreadDef_t;
/* USER CODE BEGIN PTD */
typedef struct{
	double x;
	double y;
	double z;
} offset3d_t;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define G2M_S2 9.81
#define DEG2RAD M_PI/180.0
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define RCSOFTCHECK(fn) if (fn != RCL_RET_OK) {};
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
I2C_HandleTypeDef hi2c1;

IWDG_HandleTypeDef hiwdg;

UART_HandleTypeDef hlpuart1;
DMA_HandleTypeDef hdma_lpuart1_rx;
DMA_HandleTypeDef hdma_lpuart1_tx;

/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
uint32_t defaultTaskBuffer[ 3000 ];
osStaticThreadDef_t defaultTaskControlBlock;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_mem = &defaultTaskBuffer[0],
  .stack_size = sizeof(defaultTaskBuffer),
  .cb_mem = &defaultTaskControlBlock,
  .cb_size = sizeof(defaultTaskControlBlock),
  .priority = (osPriority_t) osPriorityNormal,
};
/* USER CODE BEGIN PV */
rclc_support_t support;
rcl_allocator_t allocator;
rcl_node_t node;
rcl_init_options_t init_options;
rclc_executor_t executor;

rcl_timer_t mpu6050_timer;
rcl_publisher_t mpu6050_publisher;
sensor_msgs__msg__Imu mpu6050_msg;

rcl_publisher_t cmdvel_publisher;
geometry_msgs__msg__Twist cmdvel_msg;

rcl_subscription_t contact_sub;
std_msgs__msg__Bool contact_msg;

MPU6050_t MPU6050;

rcl_service_t mpu6050_service;
imu_interfaces__srv__ImuCalibration_Response mpu6050_response;
imu_interfaces__srv__ImuCalibration_Request mpu6050_request;

rcl_service_t imustatus_service;
std_srvs__srv__SetBool_Request imustatus_response;
std_srvs__srv__SetBool_Response imustatus_request;

rcl_client_t reset_client;
std_srvs__srv__Empty_Response reset_response;
std_srvs__srv__Empty_Request reset_request;

offset3d_t accel_offset;
offset3d_t gyro_offset;

bool is_calib = false;
bool is_contact = false;

SensorFusion imu;
matrix_instance u;
matrix_instance y;
float U[2];
float Y[2];
float dt = 0.01;
float angle[2];

GPIO_PinState prev_button = GPIO_PIN_RESET;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_LPUART1_UART_Init(void);
static void MX_I2C1_Init(void);
static void MX_IWDG_Init(void);
void StartDefaultTask(void *argument);

/* USER CODE BEGIN PFP */
void timer_callback(rcl_timer_t * timer, int64_t last_call_time);
void subscription_callback(const void * msgin);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_LPUART1_UART_Init();
  MX_I2C1_Init();
  MX_IWDG_Init();
  /* USER CODE BEGIN 2 */
  while (MPU6050_Init(&hi2c1) == 1);
  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1_BOOST);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_LSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV4;
  RCC_OscInitStruct.PLL.PLLN = 85;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x40621236;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief IWDG Initialization Function
  * @param None
  * @retval None
  */
static void MX_IWDG_Init(void)
{

  /* USER CODE BEGIN IWDG_Init 0 */

  /* USER CODE END IWDG_Init 0 */

  /* USER CODE BEGIN IWDG_Init 1 */

  /* USER CODE END IWDG_Init 1 */
  hiwdg.Instance = IWDG;
  hiwdg.Init.Prescaler = IWDG_PRESCALER_4;
  hiwdg.Init.Window = 4095;
  hiwdg.Init.Reload = 2499;
  if (HAL_IWDG_Init(&hiwdg) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN IWDG_Init 2 */

  /* USER CODE END IWDG_Init 2 */

}

/**
  * @brief LPUART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_LPUART1_UART_Init(void)
{

  /* USER CODE BEGIN LPUART1_Init 0 */

  /* USER CODE END LPUART1_Init 0 */

  /* USER CODE BEGIN LPUART1_Init 1 */

  /* USER CODE END LPUART1_Init 1 */
  hlpuart1.Instance = LPUART1;
  hlpuart1.Init.BaudRate = 2000000;
  hlpuart1.Init.WordLength = UART_WORDLENGTH_8B;
  hlpuart1.Init.StopBits = UART_STOPBITS_1;
  hlpuart1.Init.Parity = UART_PARITY_NONE;
  hlpuart1.Init.Mode = UART_MODE_TX_RX;
  hlpuart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  hlpuart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  hlpuart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  hlpuart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&hlpuart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&hlpuart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN LPUART1_Init 2 */

  /* USER CODE END LPUART1_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMAMUX1_CLK_ENABLE();
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  /* DMA1_Channel2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LD2_Pin */
  GPIO_InitStruct.Pin = LD2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */
bool cubemx_transport_open(struct uxrCustomTransport * transport);
bool cubemx_transport_close(struct uxrCustomTransport * transport);
size_t cubemx_transport_write(struct uxrCustomTransport* transport, const uint8_t * buf, size_t len, uint8_t * err);
size_t cubemx_transport_read(struct uxrCustomTransport* transport, uint8_t* buf, size_t len, int timeout, uint8_t* err);

void * microros_allocate(size_t size, void * state);
void microros_deallocate(void * pointer, void * state);
void * microros_reallocate(void * pointer, size_t size, void * state);
void * microros_zero_allocate(size_t number_of_elements, size_t size_of_element, void * state);

void timer_callback(rcl_timer_t * timer, int64_t last_call_time)
{
	HAL_IWDG_Refresh(&hiwdg);
	if (timer != NULL) {
		static float temp = 0;
		MPU6050_Read_All(&hi2c1, &MPU6050);

		mpu6050_msg.header.stamp.sec = rmw_uros_epoch_millis()/1000;
		mpu6050_msg.header.stamp.nanosec = rmw_uros_epoch_nanos();

		mpu6050_msg.linear_acceleration.x = (G2M_S2 * MPU6050.Ax) - accel_offset.x;
		mpu6050_msg.linear_acceleration.y = (G2M_S2 * MPU6050.Ay) - accel_offset.y;
		mpu6050_msg.linear_acceleration.z = (G2M_S2 * MPU6050.Az) - accel_offset.z;
		mpu6050_msg.angular_velocity.x = (DEG2RAD * MPU6050.Gx) - gyro_offset.x;
		mpu6050_msg.angular_velocity.y = (DEG2RAD * MPU6050.Gy) - gyro_offset.y;
		mpu6050_msg.angular_velocity.z = (DEG2RAD * MPU6050.Gz) - gyro_offset.z;

		RCSOFTCHECK(rcl_publish(&mpu6050_publisher, &mpu6050_msg, NULL));

		U[0] = mpu6050_msg.angular_velocity.x;
		U[1] = mpu6050_msg.angular_velocity.y;
		Y[0] = atan2(mpu6050_msg.linear_acceleration.y, mpu6050_msg.linear_acceleration.z);
		temp = sqrt(pow(mpu6050_msg.linear_acceleration.y, 2)+pow(mpu6050_msg.linear_acceleration.z, 2));
		Y[1] = atan2(-mpu6050_msg.linear_acceleration.x, temp);
		init_matrix(&u, 2, 1, U);
		init_matrix(&y, 2, 1, Y);
		sensor_fusion(&imu, &u, &y);
		angle[0] = imu.Xc.data[0][0];
		angle[1] = imu.Xc.data[1][0];

		cmdvel_msg.linear.x = angle[1];
		cmdvel_msg.angular.z = -angle[0];

		RCSOFTCHECK(rcl_publish(&cmdvel_publisher, &cmdvel_msg, NULL));

		GPIO_PinState curr_button = HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin);
		if((curr_button == GPIO_PIN_SET && prev_button == GPIO_PIN_RESET) || is_contact == true){
			is_contact = false;
			std_srvs__srv__Empty_Request__init(&reset_request);

			int64_t sequence_number;
			RCSOFTCHECK(rcl_send_request(&reset_client, &reset_request, &sequence_number));
		}
		prev_button = curr_button;
	}
}

void service_callback(const void * request_msg, void * response_msg)
{
	  imu_interfaces__srv__ImuCalibration_Request * req_in = (imu_interfaces__srv__ImuCalibration_Request *) request_msg;
	  imu_interfaces__srv__ImuCalibration_Response * res_in = (imu_interfaces__srv__ImuCalibration_Response *) response_msg;

	  for(int i = 0; i < 9; i++){
		  mpu6050_msg.linear_acceleration_covariance[i] = req_in->imu_calib.linear_acceleration_covariance[i];
		  mpu6050_msg.angular_velocity_covariance[i] = req_in->imu_calib.angular_velocity_covariance[i];
	  }

	  accel_offset.x = req_in->imu_calib.linear_acceleration.x;
	  accel_offset.y = req_in->imu_calib.linear_acceleration.y;
	  accel_offset.z = req_in->imu_calib.linear_acceleration.z;

	  gyro_offset.x = req_in->imu_calib.angular_velocity.x;
	  gyro_offset.y = req_in->imu_calib.angular_velocity.y;
	  gyro_offset.z = req_in->imu_calib.angular_velocity.z;

	  is_calib = true;
	  InitSensorFusion(&imu, mpu6050_msg.angular_velocity_covariance, mpu6050_msg.linear_acceleration_covariance, dt);
	  HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
	  res_in->success = true;
}

void imu_service_callback(const void * request_msg, void * response_msg)
{
	  std_srvs__srv__SetBool_Request * req_in = (std_srvs__srv__SetBool_Request *) request_msg;
	  std_srvs__srv__SetBool_Response * res_in = (std_srvs__srv__SetBool_Response *) response_msg;

	  if (req_in->data){
		  if (HAL_I2C_GetError(&hi2c1) == HAL_I2C_ERROR_NONE){
			  res_in->success = true;
			  res_in->message.data = "Imu is connected";
		  }
		  else {
			  res_in->success = false;
			  res_in->message.data = "Imu is not connect";
			  HAL_I2C_DeInit(&hi2c1);
			  HAL_I2C_Init(&hi2c1);
			  MPU6050_Init(&hi2c1);
		  }
	  }
	  else {
		  res_in->success = false;
		  res_in->message.data = "Request is False";
	  }
}

void subscription_callback(const void * msgin)
{
  const std_msgs__msg__Bool * contact_msg = (const std_msgs__msg__Bool *)msgin;
  is_contact = contact_msg->data;
}
/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN 5 */

	// micro-ROS configuration

	  rmw_uros_set_custom_transport(
	    true,
	    (void *) &hlpuart1,
	    cubemx_transport_open,
	    cubemx_transport_close,
	    cubemx_transport_write,
	    cubemx_transport_read);

	  rcl_allocator_t freeRTOS_allocator = rcutils_get_zero_initialized_allocator();
	  freeRTOS_allocator.allocate = microros_allocate;
	  freeRTOS_allocator.deallocate = microros_deallocate;
	  freeRTOS_allocator.reallocate = microros_reallocate;
	  freeRTOS_allocator.zero_allocate =  microros_zero_allocate;

	  if (!rcutils_set_default_allocator(&freeRTOS_allocator)) {
	      printf("Error on default allocators (line %d)\n", __LINE__);
	  }

	  GPIO_PinState button = HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin);
	  uint8_t executor_num = 3;

	  // micro-ROS app

	  // Initialize micro-ROS allocator
	  allocator = rcl_get_default_allocator();

	  //create init_options
	  // Initialize and modify options (Set DOMAIN ID to 1)
	  init_options = rcl_get_zero_initialized_init_options();
	  RCSOFTCHECK(rcl_init_options_init(&init_options, allocator));
	  RCSOFTCHECK(rcl_init_options_set_domain_id(&init_options, 28));
	  // Initialize rclc support object with custom options
	  rclc_support_init_with_options(&support, 0, NULL, &init_options, &allocator);

	  // create node
	  rclc_node_init_default(&node, "imu_node", "", &support);

	  //time sync
	  rmw_uros_sync_session(1000);

	  //create timer
	  rclc_timer_init_default(&mpu6050_timer, &support, RCL_MS_TO_NS(10), timer_callback);

	  //create publisher
	  rclc_publisher_init_default(
			  &mpu6050_publisher,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(sensor_msgs, msg, Imu),
			  "mpu6050_publisher"
	  );
	  rclc_publisher_init_default(
			  &cmdvel_publisher,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(geometry_msgs, msg, Twist),
			  "robot5/cmd_vel"
	  );

	  //create subscription
	  rclc_subscription_init_default(
			  &contact_sub,
			  &node,
			  ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, Bool),
			  "contact"
	  );

	  //create service
	  if(button == GPIO_PIN_RESET){
		  rclc_service_init_default(
				  &mpu6050_service,
				  &node,
				  ROSIDL_GET_SRV_TYPE_SUPPORT(imu_interfaces, srv, ImuCalibration),
				  "mpu6050_calibration"
		  );
		  executor_num++;
	  }
	  else {
		  is_calib = true;
		  InitSensorFusion(&imu, mpu6050_msg.angular_velocity_covariance, mpu6050_msg.linear_acceleration_covariance, dt);
	  }

	  rclc_service_init_default(
			  &imustatus_service,
			  &node,
			  ROSIDL_GET_SRV_TYPE_SUPPORT(std_srvs, srv, SetBool),
			  "imu/status"
	  );

	  //create client
	  rclc_client_init_default(
			  &reset_client,
			  &node,
			  ROSIDL_GET_SRV_TYPE_SUPPORT(std_srvs, srv, Empty),
			  "/reset_world"
	  );

	  //create executer
	  executor = rclc_executor_get_zero_initialized_executor();
	  rclc_executor_init(&executor, &support.context, executor_num, &allocator);
	  rclc_executor_add_timer(&executor, &mpu6050_timer);
	  if(button == GPIO_PIN_RESET) rclc_executor_add_service(&executor, &mpu6050_service, &mpu6050_request, &mpu6050_response, service_callback);
	  rclc_executor_add_service(&executor, &imustatus_service, &imustatus_request, &imustatus_response, imu_service_callback);
	  rclc_executor_add_subscription(&executor, &contact_sub, &contact_msg, &subscription_callback, ON_NEW_DATA);
	  rclc_executor_spin(&executor);

	  //create message
	  mpu6050_msg.header.frame_id = micro_ros_string_utilities_init("imu_frame");

	  for(;;)
	  {
		osDelay(10);
	  }
  /* USER CODE END 5 */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM1 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM1) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
