################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source/MatrixFunctions/MatrixFunctions.c \
../Source/MatrixFunctions/MatrixFunctionsF16.c \
../Source/MatrixFunctions/arm_householder_f16.c \
../Source/MatrixFunctions/arm_householder_f32.c \
../Source/MatrixFunctions/arm_householder_f64.c \
../Source/MatrixFunctions/arm_mat_add_f16.c \
../Source/MatrixFunctions/arm_mat_add_f32.c \
../Source/MatrixFunctions/arm_mat_add_q15.c \
../Source/MatrixFunctions/arm_mat_add_q31.c \
../Source/MatrixFunctions/arm_mat_cholesky_f16.c \
../Source/MatrixFunctions/arm_mat_cholesky_f32.c \
../Source/MatrixFunctions/arm_mat_cholesky_f64.c \
../Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c \
../Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
../Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
../Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
../Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c \
../Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c \
../Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c \
../Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c \
../Source/MatrixFunctions/arm_mat_init_f16.c \
../Source/MatrixFunctions/arm_mat_init_f32.c \
../Source/MatrixFunctions/arm_mat_init_f64.c \
../Source/MatrixFunctions/arm_mat_init_q15.c \
../Source/MatrixFunctions/arm_mat_init_q31.c \
../Source/MatrixFunctions/arm_mat_inverse_f16.c \
../Source/MatrixFunctions/arm_mat_inverse_f32.c \
../Source/MatrixFunctions/arm_mat_inverse_f64.c \
../Source/MatrixFunctions/arm_mat_ldlt_f32.c \
../Source/MatrixFunctions/arm_mat_ldlt_f64.c \
../Source/MatrixFunctions/arm_mat_mult_f16.c \
../Source/MatrixFunctions/arm_mat_mult_f32.c \
../Source/MatrixFunctions/arm_mat_mult_f64.c \
../Source/MatrixFunctions/arm_mat_mult_fast_q15.c \
../Source/MatrixFunctions/arm_mat_mult_fast_q31.c \
../Source/MatrixFunctions/arm_mat_mult_opt_q31.c \
../Source/MatrixFunctions/arm_mat_mult_q15.c \
../Source/MatrixFunctions/arm_mat_mult_q31.c \
../Source/MatrixFunctions/arm_mat_mult_q7.c \
../Source/MatrixFunctions/arm_mat_qr_f16.c \
../Source/MatrixFunctions/arm_mat_qr_f32.c \
../Source/MatrixFunctions/arm_mat_qr_f64.c \
../Source/MatrixFunctions/arm_mat_scale_f16.c \
../Source/MatrixFunctions/arm_mat_scale_f32.c \
../Source/MatrixFunctions/arm_mat_scale_q15.c \
../Source/MatrixFunctions/arm_mat_scale_q31.c \
../Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c \
../Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c \
../Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c \
../Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c \
../Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c \
../Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c \
../Source/MatrixFunctions/arm_mat_sub_f16.c \
../Source/MatrixFunctions/arm_mat_sub_f32.c \
../Source/MatrixFunctions/arm_mat_sub_f64.c \
../Source/MatrixFunctions/arm_mat_sub_q15.c \
../Source/MatrixFunctions/arm_mat_sub_q31.c \
../Source/MatrixFunctions/arm_mat_trans_f16.c \
../Source/MatrixFunctions/arm_mat_trans_f32.c \
../Source/MatrixFunctions/arm_mat_trans_f64.c \
../Source/MatrixFunctions/arm_mat_trans_q15.c \
../Source/MatrixFunctions/arm_mat_trans_q31.c \
../Source/MatrixFunctions/arm_mat_trans_q7.c \
../Source/MatrixFunctions/arm_mat_vec_mult_f16.c \
../Source/MatrixFunctions/arm_mat_vec_mult_f32.c \
../Source/MatrixFunctions/arm_mat_vec_mult_q15.c \
../Source/MatrixFunctions/arm_mat_vec_mult_q31.c \
../Source/MatrixFunctions/arm_mat_vec_mult_q7.c 

OBJS += \
./Source/MatrixFunctions/MatrixFunctions.o \
./Source/MatrixFunctions/MatrixFunctionsF16.o \
./Source/MatrixFunctions/arm_householder_f16.o \
./Source/MatrixFunctions/arm_householder_f32.o \
./Source/MatrixFunctions/arm_householder_f64.o \
./Source/MatrixFunctions/arm_mat_add_f16.o \
./Source/MatrixFunctions/arm_mat_add_f32.o \
./Source/MatrixFunctions/arm_mat_add_q15.o \
./Source/MatrixFunctions/arm_mat_add_q31.o \
./Source/MatrixFunctions/arm_mat_cholesky_f16.o \
./Source/MatrixFunctions/arm_mat_cholesky_f32.o \
./Source/MatrixFunctions/arm_mat_cholesky_f64.o \
./Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o \
./Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o \
./Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o \
./Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o \
./Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o \
./Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o \
./Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o \
./Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o \
./Source/MatrixFunctions/arm_mat_init_f16.o \
./Source/MatrixFunctions/arm_mat_init_f32.o \
./Source/MatrixFunctions/arm_mat_init_f64.o \
./Source/MatrixFunctions/arm_mat_init_q15.o \
./Source/MatrixFunctions/arm_mat_init_q31.o \
./Source/MatrixFunctions/arm_mat_inverse_f16.o \
./Source/MatrixFunctions/arm_mat_inverse_f32.o \
./Source/MatrixFunctions/arm_mat_inverse_f64.o \
./Source/MatrixFunctions/arm_mat_ldlt_f32.o \
./Source/MatrixFunctions/arm_mat_ldlt_f64.o \
./Source/MatrixFunctions/arm_mat_mult_f16.o \
./Source/MatrixFunctions/arm_mat_mult_f32.o \
./Source/MatrixFunctions/arm_mat_mult_f64.o \
./Source/MatrixFunctions/arm_mat_mult_fast_q15.o \
./Source/MatrixFunctions/arm_mat_mult_fast_q31.o \
./Source/MatrixFunctions/arm_mat_mult_opt_q31.o \
./Source/MatrixFunctions/arm_mat_mult_q15.o \
./Source/MatrixFunctions/arm_mat_mult_q31.o \
./Source/MatrixFunctions/arm_mat_mult_q7.o \
./Source/MatrixFunctions/arm_mat_qr_f16.o \
./Source/MatrixFunctions/arm_mat_qr_f32.o \
./Source/MatrixFunctions/arm_mat_qr_f64.o \
./Source/MatrixFunctions/arm_mat_scale_f16.o \
./Source/MatrixFunctions/arm_mat_scale_f32.o \
./Source/MatrixFunctions/arm_mat_scale_q15.o \
./Source/MatrixFunctions/arm_mat_scale_q31.o \
./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o \
./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o \
./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o \
./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o \
./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o \
./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o \
./Source/MatrixFunctions/arm_mat_sub_f16.o \
./Source/MatrixFunctions/arm_mat_sub_f32.o \
./Source/MatrixFunctions/arm_mat_sub_f64.o \
./Source/MatrixFunctions/arm_mat_sub_q15.o \
./Source/MatrixFunctions/arm_mat_sub_q31.o \
./Source/MatrixFunctions/arm_mat_trans_f16.o \
./Source/MatrixFunctions/arm_mat_trans_f32.o \
./Source/MatrixFunctions/arm_mat_trans_f64.o \
./Source/MatrixFunctions/arm_mat_trans_q15.o \
./Source/MatrixFunctions/arm_mat_trans_q31.o \
./Source/MatrixFunctions/arm_mat_trans_q7.o \
./Source/MatrixFunctions/arm_mat_vec_mult_f16.o \
./Source/MatrixFunctions/arm_mat_vec_mult_f32.o \
./Source/MatrixFunctions/arm_mat_vec_mult_q15.o \
./Source/MatrixFunctions/arm_mat_vec_mult_q31.o \
./Source/MatrixFunctions/arm_mat_vec_mult_q7.o 

C_DEPS += \
./Source/MatrixFunctions/MatrixFunctions.d \
./Source/MatrixFunctions/MatrixFunctionsF16.d \
./Source/MatrixFunctions/arm_householder_f16.d \
./Source/MatrixFunctions/arm_householder_f32.d \
./Source/MatrixFunctions/arm_householder_f64.d \
./Source/MatrixFunctions/arm_mat_add_f16.d \
./Source/MatrixFunctions/arm_mat_add_f32.d \
./Source/MatrixFunctions/arm_mat_add_q15.d \
./Source/MatrixFunctions/arm_mat_add_q31.d \
./Source/MatrixFunctions/arm_mat_cholesky_f16.d \
./Source/MatrixFunctions/arm_mat_cholesky_f32.d \
./Source/MatrixFunctions/arm_mat_cholesky_f64.d \
./Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d \
./Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d \
./Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d \
./Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d \
./Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d \
./Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d \
./Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d \
./Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d \
./Source/MatrixFunctions/arm_mat_init_f16.d \
./Source/MatrixFunctions/arm_mat_init_f32.d \
./Source/MatrixFunctions/arm_mat_init_f64.d \
./Source/MatrixFunctions/arm_mat_init_q15.d \
./Source/MatrixFunctions/arm_mat_init_q31.d \
./Source/MatrixFunctions/arm_mat_inverse_f16.d \
./Source/MatrixFunctions/arm_mat_inverse_f32.d \
./Source/MatrixFunctions/arm_mat_inverse_f64.d \
./Source/MatrixFunctions/arm_mat_ldlt_f32.d \
./Source/MatrixFunctions/arm_mat_ldlt_f64.d \
./Source/MatrixFunctions/arm_mat_mult_f16.d \
./Source/MatrixFunctions/arm_mat_mult_f32.d \
./Source/MatrixFunctions/arm_mat_mult_f64.d \
./Source/MatrixFunctions/arm_mat_mult_fast_q15.d \
./Source/MatrixFunctions/arm_mat_mult_fast_q31.d \
./Source/MatrixFunctions/arm_mat_mult_opt_q31.d \
./Source/MatrixFunctions/arm_mat_mult_q15.d \
./Source/MatrixFunctions/arm_mat_mult_q31.d \
./Source/MatrixFunctions/arm_mat_mult_q7.d \
./Source/MatrixFunctions/arm_mat_qr_f16.d \
./Source/MatrixFunctions/arm_mat_qr_f32.d \
./Source/MatrixFunctions/arm_mat_qr_f64.d \
./Source/MatrixFunctions/arm_mat_scale_f16.d \
./Source/MatrixFunctions/arm_mat_scale_f32.d \
./Source/MatrixFunctions/arm_mat_scale_q15.d \
./Source/MatrixFunctions/arm_mat_scale_q31.d \
./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d \
./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d \
./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d \
./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d \
./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d \
./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d \
./Source/MatrixFunctions/arm_mat_sub_f16.d \
./Source/MatrixFunctions/arm_mat_sub_f32.d \
./Source/MatrixFunctions/arm_mat_sub_f64.d \
./Source/MatrixFunctions/arm_mat_sub_q15.d \
./Source/MatrixFunctions/arm_mat_sub_q31.d \
./Source/MatrixFunctions/arm_mat_trans_f16.d \
./Source/MatrixFunctions/arm_mat_trans_f32.d \
./Source/MatrixFunctions/arm_mat_trans_f64.d \
./Source/MatrixFunctions/arm_mat_trans_q15.d \
./Source/MatrixFunctions/arm_mat_trans_q31.d \
./Source/MatrixFunctions/arm_mat_trans_q7.d \
./Source/MatrixFunctions/arm_mat_vec_mult_f16.d \
./Source/MatrixFunctions/arm_mat_vec_mult_f32.d \
./Source/MatrixFunctions/arm_mat_vec_mult_q15.d \
./Source/MatrixFunctions/arm_mat_vec_mult_q31.d \
./Source/MatrixFunctions/arm_mat_vec_mult_q7.d 


# Each subdirectory must supply rules for building sources it contributes
Source/MatrixFunctions/%.o Source/MatrixFunctions/%.su Source/MatrixFunctions/%.cyclo: ../Source/MatrixFunctions/%.c Source/MatrixFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../MPU6050/Src -I../micro_ros_stm32cubemx_utils/microros_static_library_ide/libmicroros/include -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/BasicMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/BayesFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/CommonTables" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/ComplexMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/ControllerFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/DistanceFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/FastMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/FilteringFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/InterpolationFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/MatrixFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/QuaternionMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/StatisticsFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/SupportFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/SVMFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/TransformFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/WindowFunctions" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Source-2f-MatrixFunctions

clean-Source-2f-MatrixFunctions:
	-$(RM) ./Source/MatrixFunctions/MatrixFunctions.cyclo ./Source/MatrixFunctions/MatrixFunctions.d ./Source/MatrixFunctions/MatrixFunctions.o ./Source/MatrixFunctions/MatrixFunctions.su ./Source/MatrixFunctions/MatrixFunctionsF16.cyclo ./Source/MatrixFunctions/MatrixFunctionsF16.d ./Source/MatrixFunctions/MatrixFunctionsF16.o ./Source/MatrixFunctions/MatrixFunctionsF16.su ./Source/MatrixFunctions/arm_householder_f16.cyclo ./Source/MatrixFunctions/arm_householder_f16.d ./Source/MatrixFunctions/arm_householder_f16.o ./Source/MatrixFunctions/arm_householder_f16.su ./Source/MatrixFunctions/arm_householder_f32.cyclo ./Source/MatrixFunctions/arm_householder_f32.d ./Source/MatrixFunctions/arm_householder_f32.o ./Source/MatrixFunctions/arm_householder_f32.su ./Source/MatrixFunctions/arm_householder_f64.cyclo ./Source/MatrixFunctions/arm_householder_f64.d ./Source/MatrixFunctions/arm_householder_f64.o ./Source/MatrixFunctions/arm_householder_f64.su ./Source/MatrixFunctions/arm_mat_add_f16.cyclo ./Source/MatrixFunctions/arm_mat_add_f16.d ./Source/MatrixFunctions/arm_mat_add_f16.o ./Source/MatrixFunctions/arm_mat_add_f16.su ./Source/MatrixFunctions/arm_mat_add_f32.cyclo ./Source/MatrixFunctions/arm_mat_add_f32.d ./Source/MatrixFunctions/arm_mat_add_f32.o ./Source/MatrixFunctions/arm_mat_add_f32.su ./Source/MatrixFunctions/arm_mat_add_q15.cyclo ./Source/MatrixFunctions/arm_mat_add_q15.d ./Source/MatrixFunctions/arm_mat_add_q15.o ./Source/MatrixFunctions/arm_mat_add_q15.su ./Source/MatrixFunctions/arm_mat_add_q31.cyclo ./Source/MatrixFunctions/arm_mat_add_q31.d ./Source/MatrixFunctions/arm_mat_add_q31.o ./Source/MatrixFunctions/arm_mat_add_q31.su ./Source/MatrixFunctions/arm_mat_cholesky_f16.cyclo ./Source/MatrixFunctions/arm_mat_cholesky_f16.d ./Source/MatrixFunctions/arm_mat_cholesky_f16.o ./Source/MatrixFunctions/arm_mat_cholesky_f16.su ./Source/MatrixFunctions/arm_mat_cholesky_f32.cyclo ./Source/MatrixFunctions/arm_mat_cholesky_f32.d ./Source/MatrixFunctions/arm_mat_cholesky_f32.o ./Source/MatrixFunctions/arm_mat_cholesky_f32.su ./Source/MatrixFunctions/arm_mat_cholesky_f64.cyclo ./Source/MatrixFunctions/arm_mat_cholesky_f64.d ./Source/MatrixFunctions/arm_mat_cholesky_f64.o ./Source/MatrixFunctions/arm_mat_cholesky_f64.su ./Source/MatrixFunctions/arm_mat_cmplx_mult_f16.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d ./Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o ./Source/MatrixFunctions/arm_mat_cmplx_mult_f16.su ./Source/MatrixFunctions/arm_mat_cmplx_mult_f32.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d ./Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o ./Source/MatrixFunctions/arm_mat_cmplx_mult_f32.su ./Source/MatrixFunctions/arm_mat_cmplx_mult_q15.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d ./Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o ./Source/MatrixFunctions/arm_mat_cmplx_mult_q15.su ./Source/MatrixFunctions/arm_mat_cmplx_mult_q31.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d ./Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o ./Source/MatrixFunctions/arm_mat_cmplx_mult_q31.su ./Source/MatrixFunctions/arm_mat_cmplx_trans_f16.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d ./Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o ./Source/MatrixFunctions/arm_mat_cmplx_trans_f16.su ./Source/MatrixFunctions/arm_mat_cmplx_trans_f32.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d ./Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o ./Source/MatrixFunctions/arm_mat_cmplx_trans_f32.su ./Source/MatrixFunctions/arm_mat_cmplx_trans_q15.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d ./Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o ./Source/MatrixFunctions/arm_mat_cmplx_trans_q15.su ./Source/MatrixFunctions/arm_mat_cmplx_trans_q31.cyclo ./Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d ./Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o ./Source/MatrixFunctions/arm_mat_cmplx_trans_q31.su ./Source/MatrixFunctions/arm_mat_init_f16.cyclo ./Source/MatrixFunctions/arm_mat_init_f16.d ./Source/MatrixFunctions/arm_mat_init_f16.o ./Source/MatrixFunctions/arm_mat_init_f16.su ./Source/MatrixFunctions/arm_mat_init_f32.cyclo ./Source/MatrixFunctions/arm_mat_init_f32.d ./Source/MatrixFunctions/arm_mat_init_f32.o ./Source/MatrixFunctions/arm_mat_init_f32.su ./Source/MatrixFunctions/arm_mat_init_f64.cyclo ./Source/MatrixFunctions/arm_mat_init_f64.d ./Source/MatrixFunctions/arm_mat_init_f64.o ./Source/MatrixFunctions/arm_mat_init_f64.su ./Source/MatrixFunctions/arm_mat_init_q15.cyclo ./Source/MatrixFunctions/arm_mat_init_q15.d ./Source/MatrixFunctions/arm_mat_init_q15.o ./Source/MatrixFunctions/arm_mat_init_q15.su ./Source/MatrixFunctions/arm_mat_init_q31.cyclo ./Source/MatrixFunctions/arm_mat_init_q31.d ./Source/MatrixFunctions/arm_mat_init_q31.o ./Source/MatrixFunctions/arm_mat_init_q31.su ./Source/MatrixFunctions/arm_mat_inverse_f16.cyclo ./Source/MatrixFunctions/arm_mat_inverse_f16.d ./Source/MatrixFunctions/arm_mat_inverse_f16.o ./Source/MatrixFunctions/arm_mat_inverse_f16.su ./Source/MatrixFunctions/arm_mat_inverse_f32.cyclo ./Source/MatrixFunctions/arm_mat_inverse_f32.d ./Source/MatrixFunctions/arm_mat_inverse_f32.o ./Source/MatrixFunctions/arm_mat_inverse_f32.su ./Source/MatrixFunctions/arm_mat_inverse_f64.cyclo ./Source/MatrixFunctions/arm_mat_inverse_f64.d ./Source/MatrixFunctions/arm_mat_inverse_f64.o ./Source/MatrixFunctions/arm_mat_inverse_f64.su ./Source/MatrixFunctions/arm_mat_ldlt_f32.cyclo ./Source/MatrixFunctions/arm_mat_ldlt_f32.d ./Source/MatrixFunctions/arm_mat_ldlt_f32.o ./Source/MatrixFunctions/arm_mat_ldlt_f32.su ./Source/MatrixFunctions/arm_mat_ldlt_f64.cyclo ./Source/MatrixFunctions/arm_mat_ldlt_f64.d ./Source/MatrixFunctions/arm_mat_ldlt_f64.o ./Source/MatrixFunctions/arm_mat_ldlt_f64.su ./Source/MatrixFunctions/arm_mat_mult_f16.cyclo ./Source/MatrixFunctions/arm_mat_mult_f16.d ./Source/MatrixFunctions/arm_mat_mult_f16.o ./Source/MatrixFunctions/arm_mat_mult_f16.su ./Source/MatrixFunctions/arm_mat_mult_f32.cyclo
	-$(RM) ./Source/MatrixFunctions/arm_mat_mult_f32.d ./Source/MatrixFunctions/arm_mat_mult_f32.o ./Source/MatrixFunctions/arm_mat_mult_f32.su ./Source/MatrixFunctions/arm_mat_mult_f64.cyclo ./Source/MatrixFunctions/arm_mat_mult_f64.d ./Source/MatrixFunctions/arm_mat_mult_f64.o ./Source/MatrixFunctions/arm_mat_mult_f64.su ./Source/MatrixFunctions/arm_mat_mult_fast_q15.cyclo ./Source/MatrixFunctions/arm_mat_mult_fast_q15.d ./Source/MatrixFunctions/arm_mat_mult_fast_q15.o ./Source/MatrixFunctions/arm_mat_mult_fast_q15.su ./Source/MatrixFunctions/arm_mat_mult_fast_q31.cyclo ./Source/MatrixFunctions/arm_mat_mult_fast_q31.d ./Source/MatrixFunctions/arm_mat_mult_fast_q31.o ./Source/MatrixFunctions/arm_mat_mult_fast_q31.su ./Source/MatrixFunctions/arm_mat_mult_opt_q31.cyclo ./Source/MatrixFunctions/arm_mat_mult_opt_q31.d ./Source/MatrixFunctions/arm_mat_mult_opt_q31.o ./Source/MatrixFunctions/arm_mat_mult_opt_q31.su ./Source/MatrixFunctions/arm_mat_mult_q15.cyclo ./Source/MatrixFunctions/arm_mat_mult_q15.d ./Source/MatrixFunctions/arm_mat_mult_q15.o ./Source/MatrixFunctions/arm_mat_mult_q15.su ./Source/MatrixFunctions/arm_mat_mult_q31.cyclo ./Source/MatrixFunctions/arm_mat_mult_q31.d ./Source/MatrixFunctions/arm_mat_mult_q31.o ./Source/MatrixFunctions/arm_mat_mult_q31.su ./Source/MatrixFunctions/arm_mat_mult_q7.cyclo ./Source/MatrixFunctions/arm_mat_mult_q7.d ./Source/MatrixFunctions/arm_mat_mult_q7.o ./Source/MatrixFunctions/arm_mat_mult_q7.su ./Source/MatrixFunctions/arm_mat_qr_f16.cyclo ./Source/MatrixFunctions/arm_mat_qr_f16.d ./Source/MatrixFunctions/arm_mat_qr_f16.o ./Source/MatrixFunctions/arm_mat_qr_f16.su ./Source/MatrixFunctions/arm_mat_qr_f32.cyclo ./Source/MatrixFunctions/arm_mat_qr_f32.d ./Source/MatrixFunctions/arm_mat_qr_f32.o ./Source/MatrixFunctions/arm_mat_qr_f32.su ./Source/MatrixFunctions/arm_mat_qr_f64.cyclo ./Source/MatrixFunctions/arm_mat_qr_f64.d ./Source/MatrixFunctions/arm_mat_qr_f64.o ./Source/MatrixFunctions/arm_mat_qr_f64.su ./Source/MatrixFunctions/arm_mat_scale_f16.cyclo ./Source/MatrixFunctions/arm_mat_scale_f16.d ./Source/MatrixFunctions/arm_mat_scale_f16.o ./Source/MatrixFunctions/arm_mat_scale_f16.su ./Source/MatrixFunctions/arm_mat_scale_f32.cyclo ./Source/MatrixFunctions/arm_mat_scale_f32.d ./Source/MatrixFunctions/arm_mat_scale_f32.o ./Source/MatrixFunctions/arm_mat_scale_f32.su ./Source/MatrixFunctions/arm_mat_scale_q15.cyclo ./Source/MatrixFunctions/arm_mat_scale_q15.d ./Source/MatrixFunctions/arm_mat_scale_q15.o ./Source/MatrixFunctions/arm_mat_scale_q15.su ./Source/MatrixFunctions/arm_mat_scale_q31.cyclo ./Source/MatrixFunctions/arm_mat_scale_q31.d ./Source/MatrixFunctions/arm_mat_scale_q31.o ./Source/MatrixFunctions/arm_mat_scale_q31.su ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.cyclo ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.su ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.cyclo ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.su ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.cyclo ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o ./Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.su ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.cyclo ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.su ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.cyclo ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.su ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.cyclo ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o ./Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.su ./Source/MatrixFunctions/arm_mat_sub_f16.cyclo ./Source/MatrixFunctions/arm_mat_sub_f16.d ./Source/MatrixFunctions/arm_mat_sub_f16.o ./Source/MatrixFunctions/arm_mat_sub_f16.su ./Source/MatrixFunctions/arm_mat_sub_f32.cyclo ./Source/MatrixFunctions/arm_mat_sub_f32.d ./Source/MatrixFunctions/arm_mat_sub_f32.o ./Source/MatrixFunctions/arm_mat_sub_f32.su ./Source/MatrixFunctions/arm_mat_sub_f64.cyclo ./Source/MatrixFunctions/arm_mat_sub_f64.d ./Source/MatrixFunctions/arm_mat_sub_f64.o ./Source/MatrixFunctions/arm_mat_sub_f64.su ./Source/MatrixFunctions/arm_mat_sub_q15.cyclo ./Source/MatrixFunctions/arm_mat_sub_q15.d ./Source/MatrixFunctions/arm_mat_sub_q15.o ./Source/MatrixFunctions/arm_mat_sub_q15.su ./Source/MatrixFunctions/arm_mat_sub_q31.cyclo ./Source/MatrixFunctions/arm_mat_sub_q31.d ./Source/MatrixFunctions/arm_mat_sub_q31.o ./Source/MatrixFunctions/arm_mat_sub_q31.su ./Source/MatrixFunctions/arm_mat_trans_f16.cyclo ./Source/MatrixFunctions/arm_mat_trans_f16.d ./Source/MatrixFunctions/arm_mat_trans_f16.o ./Source/MatrixFunctions/arm_mat_trans_f16.su ./Source/MatrixFunctions/arm_mat_trans_f32.cyclo ./Source/MatrixFunctions/arm_mat_trans_f32.d ./Source/MatrixFunctions/arm_mat_trans_f32.o ./Source/MatrixFunctions/arm_mat_trans_f32.su ./Source/MatrixFunctions/arm_mat_trans_f64.cyclo ./Source/MatrixFunctions/arm_mat_trans_f64.d ./Source/MatrixFunctions/arm_mat_trans_f64.o ./Source/MatrixFunctions/arm_mat_trans_f64.su ./Source/MatrixFunctions/arm_mat_trans_q15.cyclo ./Source/MatrixFunctions/arm_mat_trans_q15.d ./Source/MatrixFunctions/arm_mat_trans_q15.o ./Source/MatrixFunctions/arm_mat_trans_q15.su ./Source/MatrixFunctions/arm_mat_trans_q31.cyclo ./Source/MatrixFunctions/arm_mat_trans_q31.d ./Source/MatrixFunctions/arm_mat_trans_q31.o
	-$(RM) ./Source/MatrixFunctions/arm_mat_trans_q31.su ./Source/MatrixFunctions/arm_mat_trans_q7.cyclo ./Source/MatrixFunctions/arm_mat_trans_q7.d ./Source/MatrixFunctions/arm_mat_trans_q7.o ./Source/MatrixFunctions/arm_mat_trans_q7.su ./Source/MatrixFunctions/arm_mat_vec_mult_f16.cyclo ./Source/MatrixFunctions/arm_mat_vec_mult_f16.d ./Source/MatrixFunctions/arm_mat_vec_mult_f16.o ./Source/MatrixFunctions/arm_mat_vec_mult_f16.su ./Source/MatrixFunctions/arm_mat_vec_mult_f32.cyclo ./Source/MatrixFunctions/arm_mat_vec_mult_f32.d ./Source/MatrixFunctions/arm_mat_vec_mult_f32.o ./Source/MatrixFunctions/arm_mat_vec_mult_f32.su ./Source/MatrixFunctions/arm_mat_vec_mult_q15.cyclo ./Source/MatrixFunctions/arm_mat_vec_mult_q15.d ./Source/MatrixFunctions/arm_mat_vec_mult_q15.o ./Source/MatrixFunctions/arm_mat_vec_mult_q15.su ./Source/MatrixFunctions/arm_mat_vec_mult_q31.cyclo ./Source/MatrixFunctions/arm_mat_vec_mult_q31.d ./Source/MatrixFunctions/arm_mat_vec_mult_q31.o ./Source/MatrixFunctions/arm_mat_vec_mult_q31.su ./Source/MatrixFunctions/arm_mat_vec_mult_q7.cyclo ./Source/MatrixFunctions/arm_mat_vec_mult_q7.d ./Source/MatrixFunctions/arm_mat_vec_mult_q7.o ./Source/MatrixFunctions/arm_mat_vec_mult_q7.su

.PHONY: clean-Source-2f-MatrixFunctions

