################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_lcd.c \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_msc.c \
C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c 

OBJS += \
./gecko_sdk_4.4.4/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.4.4/platform/emlib/src/em_core.o \
./gecko_sdk_4.4.4/platform/emlib/src/em_emu.o \
./gecko_sdk_4.4.4/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.4.4/platform/emlib/src/em_lcd.o \
./gecko_sdk_4.4.4/platform/emlib/src/em_msc.o \
./gecko_sdk_4.4.4/platform/emlib/src/em_system.o 

C_DEPS += \
./gecko_sdk_4.4.4/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.4.4/platform/emlib/src/em_core.d \
./gecko_sdk_4.4.4/platform/emlib/src/em_emu.d \
./gecko_sdk_4.4.4/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.4.4/platform/emlib/src/em_lcd.d \
./gecko_sdk_4.4.4/platform/emlib/src/em_msc.d \
./gecko_sdk_4.4.4/platform/emlib/src/em_system.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.4/platform/emlib/src/em_cmu.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.4/platform/emlib/src/em_core.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.4/platform/emlib/src/em_emu.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.4/platform/emlib/src/em_gpio.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.4/platform/emlib/src/em_lcd.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_lcd.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_lcd.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.4/platform/emlib/src/em_msc.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_msc.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_msc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.4/platform/emlib/src/em_system.o: C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c gecko_sdk_4.4.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\config" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana\autogen" -I"C:\Users\kisch\SimplicityStudio\v5_workspace\CatchTheBanana\CatchTheBanana" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/kisch/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.4/platform/emlib/src/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


