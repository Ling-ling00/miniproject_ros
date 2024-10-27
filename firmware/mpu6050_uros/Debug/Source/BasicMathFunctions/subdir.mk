################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source/BasicMathFunctions/BasicMathFunctions.c \
../Source/BasicMathFunctions/BasicMathFunctionsF16.c \
../Source/BasicMathFunctions/arm_abs_f16.c \
../Source/BasicMathFunctions/arm_abs_f32.c \
../Source/BasicMathFunctions/arm_abs_f64.c \
../Source/BasicMathFunctions/arm_abs_q15.c \
../Source/BasicMathFunctions/arm_abs_q31.c \
../Source/BasicMathFunctions/arm_abs_q7.c \
../Source/BasicMathFunctions/arm_add_f16.c \
../Source/BasicMathFunctions/arm_add_f32.c \
../Source/BasicMathFunctions/arm_add_f64.c \
../Source/BasicMathFunctions/arm_add_q15.c \
../Source/BasicMathFunctions/arm_add_q31.c \
../Source/BasicMathFunctions/arm_add_q7.c \
../Source/BasicMathFunctions/arm_and_u16.c \
../Source/BasicMathFunctions/arm_and_u32.c \
../Source/BasicMathFunctions/arm_and_u8.c \
../Source/BasicMathFunctions/arm_clip_f16.c \
../Source/BasicMathFunctions/arm_clip_f32.c \
../Source/BasicMathFunctions/arm_clip_q15.c \
../Source/BasicMathFunctions/arm_clip_q31.c \
../Source/BasicMathFunctions/arm_clip_q7.c \
../Source/BasicMathFunctions/arm_dot_prod_f16.c \
../Source/BasicMathFunctions/arm_dot_prod_f32.c \
../Source/BasicMathFunctions/arm_dot_prod_f64.c \
../Source/BasicMathFunctions/arm_dot_prod_q15.c \
../Source/BasicMathFunctions/arm_dot_prod_q31.c \
../Source/BasicMathFunctions/arm_dot_prod_q7.c \
../Source/BasicMathFunctions/arm_mult_f16.c \
../Source/BasicMathFunctions/arm_mult_f32.c \
../Source/BasicMathFunctions/arm_mult_f64.c \
../Source/BasicMathFunctions/arm_mult_q15.c \
../Source/BasicMathFunctions/arm_mult_q31.c \
../Source/BasicMathFunctions/arm_mult_q7.c \
../Source/BasicMathFunctions/arm_negate_f16.c \
../Source/BasicMathFunctions/arm_negate_f32.c \
../Source/BasicMathFunctions/arm_negate_f64.c \
../Source/BasicMathFunctions/arm_negate_q15.c \
../Source/BasicMathFunctions/arm_negate_q31.c \
../Source/BasicMathFunctions/arm_negate_q7.c \
../Source/BasicMathFunctions/arm_not_u16.c \
../Source/BasicMathFunctions/arm_not_u32.c \
../Source/BasicMathFunctions/arm_not_u8.c \
../Source/BasicMathFunctions/arm_offset_f16.c \
../Source/BasicMathFunctions/arm_offset_f32.c \
../Source/BasicMathFunctions/arm_offset_f64.c \
../Source/BasicMathFunctions/arm_offset_q15.c \
../Source/BasicMathFunctions/arm_offset_q31.c \
../Source/BasicMathFunctions/arm_offset_q7.c \
../Source/BasicMathFunctions/arm_or_u16.c \
../Source/BasicMathFunctions/arm_or_u32.c \
../Source/BasicMathFunctions/arm_or_u8.c \
../Source/BasicMathFunctions/arm_scale_f16.c \
../Source/BasicMathFunctions/arm_scale_f32.c \
../Source/BasicMathFunctions/arm_scale_f64.c \
../Source/BasicMathFunctions/arm_scale_q15.c \
../Source/BasicMathFunctions/arm_scale_q31.c \
../Source/BasicMathFunctions/arm_scale_q7.c \
../Source/BasicMathFunctions/arm_shift_q15.c \
../Source/BasicMathFunctions/arm_shift_q31.c \
../Source/BasicMathFunctions/arm_shift_q7.c \
../Source/BasicMathFunctions/arm_sub_f16.c \
../Source/BasicMathFunctions/arm_sub_f32.c \
../Source/BasicMathFunctions/arm_sub_f64.c \
../Source/BasicMathFunctions/arm_sub_q15.c \
../Source/BasicMathFunctions/arm_sub_q31.c \
../Source/BasicMathFunctions/arm_sub_q7.c \
../Source/BasicMathFunctions/arm_xor_u16.c \
../Source/BasicMathFunctions/arm_xor_u32.c \
../Source/BasicMathFunctions/arm_xor_u8.c 

OBJS += \
./Source/BasicMathFunctions/BasicMathFunctions.o \
./Source/BasicMathFunctions/BasicMathFunctionsF16.o \
./Source/BasicMathFunctions/arm_abs_f16.o \
./Source/BasicMathFunctions/arm_abs_f32.o \
./Source/BasicMathFunctions/arm_abs_f64.o \
./Source/BasicMathFunctions/arm_abs_q15.o \
./Source/BasicMathFunctions/arm_abs_q31.o \
./Source/BasicMathFunctions/arm_abs_q7.o \
./Source/BasicMathFunctions/arm_add_f16.o \
./Source/BasicMathFunctions/arm_add_f32.o \
./Source/BasicMathFunctions/arm_add_f64.o \
./Source/BasicMathFunctions/arm_add_q15.o \
./Source/BasicMathFunctions/arm_add_q31.o \
./Source/BasicMathFunctions/arm_add_q7.o \
./Source/BasicMathFunctions/arm_and_u16.o \
./Source/BasicMathFunctions/arm_and_u32.o \
./Source/BasicMathFunctions/arm_and_u8.o \
./Source/BasicMathFunctions/arm_clip_f16.o \
./Source/BasicMathFunctions/arm_clip_f32.o \
./Source/BasicMathFunctions/arm_clip_q15.o \
./Source/BasicMathFunctions/arm_clip_q31.o \
./Source/BasicMathFunctions/arm_clip_q7.o \
./Source/BasicMathFunctions/arm_dot_prod_f16.o \
./Source/BasicMathFunctions/arm_dot_prod_f32.o \
./Source/BasicMathFunctions/arm_dot_prod_f64.o \
./Source/BasicMathFunctions/arm_dot_prod_q15.o \
./Source/BasicMathFunctions/arm_dot_prod_q31.o \
./Source/BasicMathFunctions/arm_dot_prod_q7.o \
./Source/BasicMathFunctions/arm_mult_f16.o \
./Source/BasicMathFunctions/arm_mult_f32.o \
./Source/BasicMathFunctions/arm_mult_f64.o \
./Source/BasicMathFunctions/arm_mult_q15.o \
./Source/BasicMathFunctions/arm_mult_q31.o \
./Source/BasicMathFunctions/arm_mult_q7.o \
./Source/BasicMathFunctions/arm_negate_f16.o \
./Source/BasicMathFunctions/arm_negate_f32.o \
./Source/BasicMathFunctions/arm_negate_f64.o \
./Source/BasicMathFunctions/arm_negate_q15.o \
./Source/BasicMathFunctions/arm_negate_q31.o \
./Source/BasicMathFunctions/arm_negate_q7.o \
./Source/BasicMathFunctions/arm_not_u16.o \
./Source/BasicMathFunctions/arm_not_u32.o \
./Source/BasicMathFunctions/arm_not_u8.o \
./Source/BasicMathFunctions/arm_offset_f16.o \
./Source/BasicMathFunctions/arm_offset_f32.o \
./Source/BasicMathFunctions/arm_offset_f64.o \
./Source/BasicMathFunctions/arm_offset_q15.o \
./Source/BasicMathFunctions/arm_offset_q31.o \
./Source/BasicMathFunctions/arm_offset_q7.o \
./Source/BasicMathFunctions/arm_or_u16.o \
./Source/BasicMathFunctions/arm_or_u32.o \
./Source/BasicMathFunctions/arm_or_u8.o \
./Source/BasicMathFunctions/arm_scale_f16.o \
./Source/BasicMathFunctions/arm_scale_f32.o \
./Source/BasicMathFunctions/arm_scale_f64.o \
./Source/BasicMathFunctions/arm_scale_q15.o \
./Source/BasicMathFunctions/arm_scale_q31.o \
./Source/BasicMathFunctions/arm_scale_q7.o \
./Source/BasicMathFunctions/arm_shift_q15.o \
./Source/BasicMathFunctions/arm_shift_q31.o \
./Source/BasicMathFunctions/arm_shift_q7.o \
./Source/BasicMathFunctions/arm_sub_f16.o \
./Source/BasicMathFunctions/arm_sub_f32.o \
./Source/BasicMathFunctions/arm_sub_f64.o \
./Source/BasicMathFunctions/arm_sub_q15.o \
./Source/BasicMathFunctions/arm_sub_q31.o \
./Source/BasicMathFunctions/arm_sub_q7.o \
./Source/BasicMathFunctions/arm_xor_u16.o \
./Source/BasicMathFunctions/arm_xor_u32.o \
./Source/BasicMathFunctions/arm_xor_u8.o 

C_DEPS += \
./Source/BasicMathFunctions/BasicMathFunctions.d \
./Source/BasicMathFunctions/BasicMathFunctionsF16.d \
./Source/BasicMathFunctions/arm_abs_f16.d \
./Source/BasicMathFunctions/arm_abs_f32.d \
./Source/BasicMathFunctions/arm_abs_f64.d \
./Source/BasicMathFunctions/arm_abs_q15.d \
./Source/BasicMathFunctions/arm_abs_q31.d \
./Source/BasicMathFunctions/arm_abs_q7.d \
./Source/BasicMathFunctions/arm_add_f16.d \
./Source/BasicMathFunctions/arm_add_f32.d \
./Source/BasicMathFunctions/arm_add_f64.d \
./Source/BasicMathFunctions/arm_add_q15.d \
./Source/BasicMathFunctions/arm_add_q31.d \
./Source/BasicMathFunctions/arm_add_q7.d \
./Source/BasicMathFunctions/arm_and_u16.d \
./Source/BasicMathFunctions/arm_and_u32.d \
./Source/BasicMathFunctions/arm_and_u8.d \
./Source/BasicMathFunctions/arm_clip_f16.d \
./Source/BasicMathFunctions/arm_clip_f32.d \
./Source/BasicMathFunctions/arm_clip_q15.d \
./Source/BasicMathFunctions/arm_clip_q31.d \
./Source/BasicMathFunctions/arm_clip_q7.d \
./Source/BasicMathFunctions/arm_dot_prod_f16.d \
./Source/BasicMathFunctions/arm_dot_prod_f32.d \
./Source/BasicMathFunctions/arm_dot_prod_f64.d \
./Source/BasicMathFunctions/arm_dot_prod_q15.d \
./Source/BasicMathFunctions/arm_dot_prod_q31.d \
./Source/BasicMathFunctions/arm_dot_prod_q7.d \
./Source/BasicMathFunctions/arm_mult_f16.d \
./Source/BasicMathFunctions/arm_mult_f32.d \
./Source/BasicMathFunctions/arm_mult_f64.d \
./Source/BasicMathFunctions/arm_mult_q15.d \
./Source/BasicMathFunctions/arm_mult_q31.d \
./Source/BasicMathFunctions/arm_mult_q7.d \
./Source/BasicMathFunctions/arm_negate_f16.d \
./Source/BasicMathFunctions/arm_negate_f32.d \
./Source/BasicMathFunctions/arm_negate_f64.d \
./Source/BasicMathFunctions/arm_negate_q15.d \
./Source/BasicMathFunctions/arm_negate_q31.d \
./Source/BasicMathFunctions/arm_negate_q7.d \
./Source/BasicMathFunctions/arm_not_u16.d \
./Source/BasicMathFunctions/arm_not_u32.d \
./Source/BasicMathFunctions/arm_not_u8.d \
./Source/BasicMathFunctions/arm_offset_f16.d \
./Source/BasicMathFunctions/arm_offset_f32.d \
./Source/BasicMathFunctions/arm_offset_f64.d \
./Source/BasicMathFunctions/arm_offset_q15.d \
./Source/BasicMathFunctions/arm_offset_q31.d \
./Source/BasicMathFunctions/arm_offset_q7.d \
./Source/BasicMathFunctions/arm_or_u16.d \
./Source/BasicMathFunctions/arm_or_u32.d \
./Source/BasicMathFunctions/arm_or_u8.d \
./Source/BasicMathFunctions/arm_scale_f16.d \
./Source/BasicMathFunctions/arm_scale_f32.d \
./Source/BasicMathFunctions/arm_scale_f64.d \
./Source/BasicMathFunctions/arm_scale_q15.d \
./Source/BasicMathFunctions/arm_scale_q31.d \
./Source/BasicMathFunctions/arm_scale_q7.d \
./Source/BasicMathFunctions/arm_shift_q15.d \
./Source/BasicMathFunctions/arm_shift_q31.d \
./Source/BasicMathFunctions/arm_shift_q7.d \
./Source/BasicMathFunctions/arm_sub_f16.d \
./Source/BasicMathFunctions/arm_sub_f32.d \
./Source/BasicMathFunctions/arm_sub_f64.d \
./Source/BasicMathFunctions/arm_sub_q15.d \
./Source/BasicMathFunctions/arm_sub_q31.d \
./Source/BasicMathFunctions/arm_sub_q7.d \
./Source/BasicMathFunctions/arm_xor_u16.d \
./Source/BasicMathFunctions/arm_xor_u32.d \
./Source/BasicMathFunctions/arm_xor_u8.d 


# Each subdirectory must supply rules for building sources it contributes
Source/BasicMathFunctions/%.o Source/BasicMathFunctions/%.su Source/BasicMathFunctions/%.cyclo: ../Source/BasicMathFunctions/%.c Source/BasicMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../MPU6050/Src -I../micro_ros_stm32cubemx_utils/microros_static_library_ide/libmicroros/include -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/BasicMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/BayesFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/CommonTables" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/ComplexMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/ControllerFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/DistanceFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/FastMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/FilteringFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/InterpolationFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/MatrixFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/QuaternionMathFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/StatisticsFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/SupportFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/SVMFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/TransformFunctions" -I"/home/ponwalai/microros_ws/firmware/mpu6050_uros/Source/WindowFunctions" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Source-2f-BasicMathFunctions

clean-Source-2f-BasicMathFunctions:
	-$(RM) ./Source/BasicMathFunctions/BasicMathFunctions.cyclo ./Source/BasicMathFunctions/BasicMathFunctions.d ./Source/BasicMathFunctions/BasicMathFunctions.o ./Source/BasicMathFunctions/BasicMathFunctions.su ./Source/BasicMathFunctions/BasicMathFunctionsF16.cyclo ./Source/BasicMathFunctions/BasicMathFunctionsF16.d ./Source/BasicMathFunctions/BasicMathFunctionsF16.o ./Source/BasicMathFunctions/BasicMathFunctionsF16.su ./Source/BasicMathFunctions/arm_abs_f16.cyclo ./Source/BasicMathFunctions/arm_abs_f16.d ./Source/BasicMathFunctions/arm_abs_f16.o ./Source/BasicMathFunctions/arm_abs_f16.su ./Source/BasicMathFunctions/arm_abs_f32.cyclo ./Source/BasicMathFunctions/arm_abs_f32.d ./Source/BasicMathFunctions/arm_abs_f32.o ./Source/BasicMathFunctions/arm_abs_f32.su ./Source/BasicMathFunctions/arm_abs_f64.cyclo ./Source/BasicMathFunctions/arm_abs_f64.d ./Source/BasicMathFunctions/arm_abs_f64.o ./Source/BasicMathFunctions/arm_abs_f64.su ./Source/BasicMathFunctions/arm_abs_q15.cyclo ./Source/BasicMathFunctions/arm_abs_q15.d ./Source/BasicMathFunctions/arm_abs_q15.o ./Source/BasicMathFunctions/arm_abs_q15.su ./Source/BasicMathFunctions/arm_abs_q31.cyclo ./Source/BasicMathFunctions/arm_abs_q31.d ./Source/BasicMathFunctions/arm_abs_q31.o ./Source/BasicMathFunctions/arm_abs_q31.su ./Source/BasicMathFunctions/arm_abs_q7.cyclo ./Source/BasicMathFunctions/arm_abs_q7.d ./Source/BasicMathFunctions/arm_abs_q7.o ./Source/BasicMathFunctions/arm_abs_q7.su ./Source/BasicMathFunctions/arm_add_f16.cyclo ./Source/BasicMathFunctions/arm_add_f16.d ./Source/BasicMathFunctions/arm_add_f16.o ./Source/BasicMathFunctions/arm_add_f16.su ./Source/BasicMathFunctions/arm_add_f32.cyclo ./Source/BasicMathFunctions/arm_add_f32.d ./Source/BasicMathFunctions/arm_add_f32.o ./Source/BasicMathFunctions/arm_add_f32.su ./Source/BasicMathFunctions/arm_add_f64.cyclo ./Source/BasicMathFunctions/arm_add_f64.d ./Source/BasicMathFunctions/arm_add_f64.o ./Source/BasicMathFunctions/arm_add_f64.su ./Source/BasicMathFunctions/arm_add_q15.cyclo ./Source/BasicMathFunctions/arm_add_q15.d ./Source/BasicMathFunctions/arm_add_q15.o ./Source/BasicMathFunctions/arm_add_q15.su ./Source/BasicMathFunctions/arm_add_q31.cyclo ./Source/BasicMathFunctions/arm_add_q31.d ./Source/BasicMathFunctions/arm_add_q31.o ./Source/BasicMathFunctions/arm_add_q31.su ./Source/BasicMathFunctions/arm_add_q7.cyclo ./Source/BasicMathFunctions/arm_add_q7.d ./Source/BasicMathFunctions/arm_add_q7.o ./Source/BasicMathFunctions/arm_add_q7.su ./Source/BasicMathFunctions/arm_and_u16.cyclo ./Source/BasicMathFunctions/arm_and_u16.d ./Source/BasicMathFunctions/arm_and_u16.o ./Source/BasicMathFunctions/arm_and_u16.su ./Source/BasicMathFunctions/arm_and_u32.cyclo ./Source/BasicMathFunctions/arm_and_u32.d ./Source/BasicMathFunctions/arm_and_u32.o ./Source/BasicMathFunctions/arm_and_u32.su ./Source/BasicMathFunctions/arm_and_u8.cyclo ./Source/BasicMathFunctions/arm_and_u8.d ./Source/BasicMathFunctions/arm_and_u8.o ./Source/BasicMathFunctions/arm_and_u8.su ./Source/BasicMathFunctions/arm_clip_f16.cyclo ./Source/BasicMathFunctions/arm_clip_f16.d ./Source/BasicMathFunctions/arm_clip_f16.o ./Source/BasicMathFunctions/arm_clip_f16.su ./Source/BasicMathFunctions/arm_clip_f32.cyclo ./Source/BasicMathFunctions/arm_clip_f32.d ./Source/BasicMathFunctions/arm_clip_f32.o ./Source/BasicMathFunctions/arm_clip_f32.su ./Source/BasicMathFunctions/arm_clip_q15.cyclo ./Source/BasicMathFunctions/arm_clip_q15.d ./Source/BasicMathFunctions/arm_clip_q15.o ./Source/BasicMathFunctions/arm_clip_q15.su ./Source/BasicMathFunctions/arm_clip_q31.cyclo ./Source/BasicMathFunctions/arm_clip_q31.d ./Source/BasicMathFunctions/arm_clip_q31.o ./Source/BasicMathFunctions/arm_clip_q31.su ./Source/BasicMathFunctions/arm_clip_q7.cyclo ./Source/BasicMathFunctions/arm_clip_q7.d ./Source/BasicMathFunctions/arm_clip_q7.o ./Source/BasicMathFunctions/arm_clip_q7.su ./Source/BasicMathFunctions/arm_dot_prod_f16.cyclo ./Source/BasicMathFunctions/arm_dot_prod_f16.d ./Source/BasicMathFunctions/arm_dot_prod_f16.o ./Source/BasicMathFunctions/arm_dot_prod_f16.su ./Source/BasicMathFunctions/arm_dot_prod_f32.cyclo ./Source/BasicMathFunctions/arm_dot_prod_f32.d ./Source/BasicMathFunctions/arm_dot_prod_f32.o ./Source/BasicMathFunctions/arm_dot_prod_f32.su ./Source/BasicMathFunctions/arm_dot_prod_f64.cyclo ./Source/BasicMathFunctions/arm_dot_prod_f64.d ./Source/BasicMathFunctions/arm_dot_prod_f64.o ./Source/BasicMathFunctions/arm_dot_prod_f64.su ./Source/BasicMathFunctions/arm_dot_prod_q15.cyclo ./Source/BasicMathFunctions/arm_dot_prod_q15.d ./Source/BasicMathFunctions/arm_dot_prod_q15.o ./Source/BasicMathFunctions/arm_dot_prod_q15.su ./Source/BasicMathFunctions/arm_dot_prod_q31.cyclo ./Source/BasicMathFunctions/arm_dot_prod_q31.d ./Source/BasicMathFunctions/arm_dot_prod_q31.o ./Source/BasicMathFunctions/arm_dot_prod_q31.su ./Source/BasicMathFunctions/arm_dot_prod_q7.cyclo ./Source/BasicMathFunctions/arm_dot_prod_q7.d ./Source/BasicMathFunctions/arm_dot_prod_q7.o ./Source/BasicMathFunctions/arm_dot_prod_q7.su ./Source/BasicMathFunctions/arm_mult_f16.cyclo ./Source/BasicMathFunctions/arm_mult_f16.d ./Source/BasicMathFunctions/arm_mult_f16.o ./Source/BasicMathFunctions/arm_mult_f16.su ./Source/BasicMathFunctions/arm_mult_f32.cyclo ./Source/BasicMathFunctions/arm_mult_f32.d ./Source/BasicMathFunctions/arm_mult_f32.o ./Source/BasicMathFunctions/arm_mult_f32.su ./Source/BasicMathFunctions/arm_mult_f64.cyclo ./Source/BasicMathFunctions/arm_mult_f64.d ./Source/BasicMathFunctions/arm_mult_f64.o ./Source/BasicMathFunctions/arm_mult_f64.su ./Source/BasicMathFunctions/arm_mult_q15.cyclo ./Source/BasicMathFunctions/arm_mult_q15.d ./Source/BasicMathFunctions/arm_mult_q15.o ./Source/BasicMathFunctions/arm_mult_q15.su ./Source/BasicMathFunctions/arm_mult_q31.cyclo ./Source/BasicMathFunctions/arm_mult_q31.d ./Source/BasicMathFunctions/arm_mult_q31.o ./Source/BasicMathFunctions/arm_mult_q31.su ./Source/BasicMathFunctions/arm_mult_q7.cyclo
	-$(RM) ./Source/BasicMathFunctions/arm_mult_q7.d ./Source/BasicMathFunctions/arm_mult_q7.o ./Source/BasicMathFunctions/arm_mult_q7.su ./Source/BasicMathFunctions/arm_negate_f16.cyclo ./Source/BasicMathFunctions/arm_negate_f16.d ./Source/BasicMathFunctions/arm_negate_f16.o ./Source/BasicMathFunctions/arm_negate_f16.su ./Source/BasicMathFunctions/arm_negate_f32.cyclo ./Source/BasicMathFunctions/arm_negate_f32.d ./Source/BasicMathFunctions/arm_negate_f32.o ./Source/BasicMathFunctions/arm_negate_f32.su ./Source/BasicMathFunctions/arm_negate_f64.cyclo ./Source/BasicMathFunctions/arm_negate_f64.d ./Source/BasicMathFunctions/arm_negate_f64.o ./Source/BasicMathFunctions/arm_negate_f64.su ./Source/BasicMathFunctions/arm_negate_q15.cyclo ./Source/BasicMathFunctions/arm_negate_q15.d ./Source/BasicMathFunctions/arm_negate_q15.o ./Source/BasicMathFunctions/arm_negate_q15.su ./Source/BasicMathFunctions/arm_negate_q31.cyclo ./Source/BasicMathFunctions/arm_negate_q31.d ./Source/BasicMathFunctions/arm_negate_q31.o ./Source/BasicMathFunctions/arm_negate_q31.su ./Source/BasicMathFunctions/arm_negate_q7.cyclo ./Source/BasicMathFunctions/arm_negate_q7.d ./Source/BasicMathFunctions/arm_negate_q7.o ./Source/BasicMathFunctions/arm_negate_q7.su ./Source/BasicMathFunctions/arm_not_u16.cyclo ./Source/BasicMathFunctions/arm_not_u16.d ./Source/BasicMathFunctions/arm_not_u16.o ./Source/BasicMathFunctions/arm_not_u16.su ./Source/BasicMathFunctions/arm_not_u32.cyclo ./Source/BasicMathFunctions/arm_not_u32.d ./Source/BasicMathFunctions/arm_not_u32.o ./Source/BasicMathFunctions/arm_not_u32.su ./Source/BasicMathFunctions/arm_not_u8.cyclo ./Source/BasicMathFunctions/arm_not_u8.d ./Source/BasicMathFunctions/arm_not_u8.o ./Source/BasicMathFunctions/arm_not_u8.su ./Source/BasicMathFunctions/arm_offset_f16.cyclo ./Source/BasicMathFunctions/arm_offset_f16.d ./Source/BasicMathFunctions/arm_offset_f16.o ./Source/BasicMathFunctions/arm_offset_f16.su ./Source/BasicMathFunctions/arm_offset_f32.cyclo ./Source/BasicMathFunctions/arm_offset_f32.d ./Source/BasicMathFunctions/arm_offset_f32.o ./Source/BasicMathFunctions/arm_offset_f32.su ./Source/BasicMathFunctions/arm_offset_f64.cyclo ./Source/BasicMathFunctions/arm_offset_f64.d ./Source/BasicMathFunctions/arm_offset_f64.o ./Source/BasicMathFunctions/arm_offset_f64.su ./Source/BasicMathFunctions/arm_offset_q15.cyclo ./Source/BasicMathFunctions/arm_offset_q15.d ./Source/BasicMathFunctions/arm_offset_q15.o ./Source/BasicMathFunctions/arm_offset_q15.su ./Source/BasicMathFunctions/arm_offset_q31.cyclo ./Source/BasicMathFunctions/arm_offset_q31.d ./Source/BasicMathFunctions/arm_offset_q31.o ./Source/BasicMathFunctions/arm_offset_q31.su ./Source/BasicMathFunctions/arm_offset_q7.cyclo ./Source/BasicMathFunctions/arm_offset_q7.d ./Source/BasicMathFunctions/arm_offset_q7.o ./Source/BasicMathFunctions/arm_offset_q7.su ./Source/BasicMathFunctions/arm_or_u16.cyclo ./Source/BasicMathFunctions/arm_or_u16.d ./Source/BasicMathFunctions/arm_or_u16.o ./Source/BasicMathFunctions/arm_or_u16.su ./Source/BasicMathFunctions/arm_or_u32.cyclo ./Source/BasicMathFunctions/arm_or_u32.d ./Source/BasicMathFunctions/arm_or_u32.o ./Source/BasicMathFunctions/arm_or_u32.su ./Source/BasicMathFunctions/arm_or_u8.cyclo ./Source/BasicMathFunctions/arm_or_u8.d ./Source/BasicMathFunctions/arm_or_u8.o ./Source/BasicMathFunctions/arm_or_u8.su ./Source/BasicMathFunctions/arm_scale_f16.cyclo ./Source/BasicMathFunctions/arm_scale_f16.d ./Source/BasicMathFunctions/arm_scale_f16.o ./Source/BasicMathFunctions/arm_scale_f16.su ./Source/BasicMathFunctions/arm_scale_f32.cyclo ./Source/BasicMathFunctions/arm_scale_f32.d ./Source/BasicMathFunctions/arm_scale_f32.o ./Source/BasicMathFunctions/arm_scale_f32.su ./Source/BasicMathFunctions/arm_scale_f64.cyclo ./Source/BasicMathFunctions/arm_scale_f64.d ./Source/BasicMathFunctions/arm_scale_f64.o ./Source/BasicMathFunctions/arm_scale_f64.su ./Source/BasicMathFunctions/arm_scale_q15.cyclo ./Source/BasicMathFunctions/arm_scale_q15.d ./Source/BasicMathFunctions/arm_scale_q15.o ./Source/BasicMathFunctions/arm_scale_q15.su ./Source/BasicMathFunctions/arm_scale_q31.cyclo ./Source/BasicMathFunctions/arm_scale_q31.d ./Source/BasicMathFunctions/arm_scale_q31.o ./Source/BasicMathFunctions/arm_scale_q31.su ./Source/BasicMathFunctions/arm_scale_q7.cyclo ./Source/BasicMathFunctions/arm_scale_q7.d ./Source/BasicMathFunctions/arm_scale_q7.o ./Source/BasicMathFunctions/arm_scale_q7.su ./Source/BasicMathFunctions/arm_shift_q15.cyclo ./Source/BasicMathFunctions/arm_shift_q15.d ./Source/BasicMathFunctions/arm_shift_q15.o ./Source/BasicMathFunctions/arm_shift_q15.su ./Source/BasicMathFunctions/arm_shift_q31.cyclo ./Source/BasicMathFunctions/arm_shift_q31.d ./Source/BasicMathFunctions/arm_shift_q31.o ./Source/BasicMathFunctions/arm_shift_q31.su ./Source/BasicMathFunctions/arm_shift_q7.cyclo ./Source/BasicMathFunctions/arm_shift_q7.d ./Source/BasicMathFunctions/arm_shift_q7.o ./Source/BasicMathFunctions/arm_shift_q7.su ./Source/BasicMathFunctions/arm_sub_f16.cyclo ./Source/BasicMathFunctions/arm_sub_f16.d ./Source/BasicMathFunctions/arm_sub_f16.o ./Source/BasicMathFunctions/arm_sub_f16.su ./Source/BasicMathFunctions/arm_sub_f32.cyclo ./Source/BasicMathFunctions/arm_sub_f32.d ./Source/BasicMathFunctions/arm_sub_f32.o ./Source/BasicMathFunctions/arm_sub_f32.su ./Source/BasicMathFunctions/arm_sub_f64.cyclo ./Source/BasicMathFunctions/arm_sub_f64.d ./Source/BasicMathFunctions/arm_sub_f64.o ./Source/BasicMathFunctions/arm_sub_f64.su ./Source/BasicMathFunctions/arm_sub_q15.cyclo ./Source/BasicMathFunctions/arm_sub_q15.d ./Source/BasicMathFunctions/arm_sub_q15.o ./Source/BasicMathFunctions/arm_sub_q15.su ./Source/BasicMathFunctions/arm_sub_q31.cyclo ./Source/BasicMathFunctions/arm_sub_q31.d ./Source/BasicMathFunctions/arm_sub_q31.o ./Source/BasicMathFunctions/arm_sub_q31.su ./Source/BasicMathFunctions/arm_sub_q7.cyclo ./Source/BasicMathFunctions/arm_sub_q7.d ./Source/BasicMathFunctions/arm_sub_q7.o
	-$(RM) ./Source/BasicMathFunctions/arm_sub_q7.su ./Source/BasicMathFunctions/arm_xor_u16.cyclo ./Source/BasicMathFunctions/arm_xor_u16.d ./Source/BasicMathFunctions/arm_xor_u16.o ./Source/BasicMathFunctions/arm_xor_u16.su ./Source/BasicMathFunctions/arm_xor_u32.cyclo ./Source/BasicMathFunctions/arm_xor_u32.d ./Source/BasicMathFunctions/arm_xor_u32.o ./Source/BasicMathFunctions/arm_xor_u32.su ./Source/BasicMathFunctions/arm_xor_u8.cyclo ./Source/BasicMathFunctions/arm_xor_u8.d ./Source/BasicMathFunctions/arm_xor_u8.o ./Source/BasicMathFunctions/arm_xor_u8.su

.PHONY: clean-Source-2f-BasicMathFunctions

