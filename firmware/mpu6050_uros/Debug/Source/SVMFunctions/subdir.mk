################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source/SVMFunctions/SVMFunctions.c \
../Source/SVMFunctions/SVMFunctionsF16.c \
../Source/SVMFunctions/arm_svm_linear_init_f16.c \
../Source/SVMFunctions/arm_svm_linear_init_f32.c \
../Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./Source/SVMFunctions/SVMFunctions.o \
./Source/SVMFunctions/SVMFunctionsF16.o \
./Source/SVMFunctions/arm_svm_linear_init_f16.o \
./Source/SVMFunctions/arm_svm_linear_init_f32.o \
./Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./Source/SVMFunctions/SVMFunctions.d \
./Source/SVMFunctions/SVMFunctionsF16.d \
./Source/SVMFunctions/arm_svm_linear_init_f16.d \
./Source/SVMFunctions/arm_svm_linear_init_f32.d \
./Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Source/SVMFunctions/%.o Source/SVMFunctions/%.su Source/SVMFunctions/%.cyclo: ../Source/SVMFunctions/%.c Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../MPU6050/Src -I../micro_ros_stm32cubemx_utils/microros_static_library_ide/libmicroros/include -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/BasicMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/BayesFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/CommonTables" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/ComplexMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/ControllerFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/DistanceFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/FastMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/FilteringFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/InterpolationFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/MatrixFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/QuaternionMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/StatisticsFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/SupportFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/SVMFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/TransformFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/WindowFunctions" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Source-2f-SVMFunctions

clean-Source-2f-SVMFunctions:
	-$(RM) ./Source/SVMFunctions/SVMFunctions.cyclo ./Source/SVMFunctions/SVMFunctions.d ./Source/SVMFunctions/SVMFunctions.o ./Source/SVMFunctions/SVMFunctions.su ./Source/SVMFunctions/SVMFunctionsF16.cyclo ./Source/SVMFunctions/SVMFunctionsF16.d ./Source/SVMFunctions/SVMFunctionsF16.o ./Source/SVMFunctions/SVMFunctionsF16.su ./Source/SVMFunctions/arm_svm_linear_init_f16.cyclo ./Source/SVMFunctions/arm_svm_linear_init_f16.d ./Source/SVMFunctions/arm_svm_linear_init_f16.o ./Source/SVMFunctions/arm_svm_linear_init_f16.su ./Source/SVMFunctions/arm_svm_linear_init_f32.cyclo ./Source/SVMFunctions/arm_svm_linear_init_f32.d ./Source/SVMFunctions/arm_svm_linear_init_f32.o ./Source/SVMFunctions/arm_svm_linear_init_f32.su ./Source/SVMFunctions/arm_svm_linear_predict_f16.cyclo ./Source/SVMFunctions/arm_svm_linear_predict_f16.d ./Source/SVMFunctions/arm_svm_linear_predict_f16.o ./Source/SVMFunctions/arm_svm_linear_predict_f16.su ./Source/SVMFunctions/arm_svm_linear_predict_f32.cyclo ./Source/SVMFunctions/arm_svm_linear_predict_f32.d ./Source/SVMFunctions/arm_svm_linear_predict_f32.o ./Source/SVMFunctions/arm_svm_linear_predict_f32.su ./Source/SVMFunctions/arm_svm_polynomial_init_f16.cyclo ./Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./Source/SVMFunctions/arm_svm_polynomial_init_f16.su ./Source/SVMFunctions/arm_svm_polynomial_init_f32.cyclo ./Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./Source/SVMFunctions/arm_svm_polynomial_init_f32.su ./Source/SVMFunctions/arm_svm_polynomial_predict_f16.cyclo ./Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./Source/SVMFunctions/arm_svm_polynomial_predict_f16.su ./Source/SVMFunctions/arm_svm_polynomial_predict_f32.cyclo ./Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./Source/SVMFunctions/arm_svm_polynomial_predict_f32.su ./Source/SVMFunctions/arm_svm_rbf_init_f16.cyclo ./Source/SVMFunctions/arm_svm_rbf_init_f16.d ./Source/SVMFunctions/arm_svm_rbf_init_f16.o ./Source/SVMFunctions/arm_svm_rbf_init_f16.su ./Source/SVMFunctions/arm_svm_rbf_init_f32.cyclo ./Source/SVMFunctions/arm_svm_rbf_init_f32.d ./Source/SVMFunctions/arm_svm_rbf_init_f32.o ./Source/SVMFunctions/arm_svm_rbf_init_f32.su ./Source/SVMFunctions/arm_svm_rbf_predict_f16.cyclo ./Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./Source/SVMFunctions/arm_svm_rbf_predict_f16.su ./Source/SVMFunctions/arm_svm_rbf_predict_f32.cyclo ./Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./Source/SVMFunctions/arm_svm_rbf_predict_f32.su ./Source/SVMFunctions/arm_svm_sigmoid_init_f16.cyclo ./Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./Source/SVMFunctions/arm_svm_sigmoid_init_f16.su ./Source/SVMFunctions/arm_svm_sigmoid_init_f32.cyclo ./Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./Source/SVMFunctions/arm_svm_sigmoid_init_f32.su ./Source/SVMFunctions/arm_svm_sigmoid_predict_f16.cyclo ./Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./Source/SVMFunctions/arm_svm_sigmoid_predict_f16.su ./Source/SVMFunctions/arm_svm_sigmoid_predict_f32.cyclo ./Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o ./Source/SVMFunctions/arm_svm_sigmoid_predict_f32.su

.PHONY: clean-Source-2f-SVMFunctions

