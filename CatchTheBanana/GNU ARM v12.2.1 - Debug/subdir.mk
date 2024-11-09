################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app.c \
../main.c \
../score.c \
../segmentlcd.c 

OBJS += \
./app.o \
./main.o \
./score.o \
./segmentlcd.o 

C_DEPS += \
./app.d \
./main.d \
./score.d \
./segmentlcd.d 


# Each subdirectory must supply rules for building sources it contributes
app.o: ../app.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"app.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

score.o: ../score.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"score.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

segmentlcd.o: ../segmentlcd.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"segmentlcd.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


