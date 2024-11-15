set(SDK_PATH "C:/Users/abel0/SimplicityStudio/SDKs/gecko_sdk")
set(COPIED_SDK_PATH "gecko_sdk_4.4.4")

add_library(slc_CatchTheBanana OBJECT
    "${SDK_PATH}/hardware/board/src/sl_board_control_gpio.c"
    "${SDK_PATH}/hardware/board/src/sl_board_init.c"
    "${SDK_PATH}/platform/common/src/sl_assert.c"
    "${SDK_PATH}/platform/common/src/sl_syscalls.c"
    "${SDK_PATH}/platform/common/toolchain/src/sl_memory.c"
    "${SDK_PATH}/platform/Device/SiliconLabs/EFM32GG/Source/startup_efm32gg.c"
    "${SDK_PATH}/platform/Device/SiliconLabs/EFM32GG/Source/system_efm32gg.c"
    "${SDK_PATH}/platform/driver/button/src/sl_button.c"
    "${SDK_PATH}/platform/driver/button/src/sl_simple_button.c"
    "${SDK_PATH}/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c"
    "${SDK_PATH}/platform/emlib/src/em_cmu.c"
    "${SDK_PATH}/platform/emlib/src/em_core.c"
    "${SDK_PATH}/platform/emlib/src/em_emu.c"
    "${SDK_PATH}/platform/emlib/src/em_gpio.c"
    "${SDK_PATH}/platform/emlib/src/em_lcd.c"
    "${SDK_PATH}/platform/emlib/src/em_msc.c"
    "${SDK_PATH}/platform/emlib/src/em_system.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_emu_s0.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_hfxo_s0.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_lfxo_s0.c"
    "${SDK_PATH}/platform/service/device_init/src/sl_device_init_nvic.c"
    "${SDK_PATH}/platform/service/system/src/sl_system_init.c"
    "${SDK_PATH}/platform/service/system/src/sl_system_process_action.c"
    "${SDK_PATH}/platform/service/udelay/src/sl_udelay.c"
    "${SDK_PATH}/platform/service/udelay/src/sl_udelay_armv6m_gcc.S"
    "../app.c"
    "../autogen/sl_board_default_init.c"
    "../autogen/sl_device_init_clocks.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_simple_button_instances.c"
    "../main.c"
)

target_include_directories(slc_CatchTheBanana PUBLIC
   "../config"
   "../autogen"
   "../."
    "${SDK_PATH}/platform/Device/SiliconLabs/EFM32GG/Include"
    "${SDK_PATH}/hardware/board/inc"
    "${SDK_PATH}/platform/driver/button/inc"
    "${SDK_PATH}/platform/CMSIS/Core/Include"
    "${SDK_PATH}/platform/service/device_init/inc"
    "${SDK_PATH}/platform/emdrv/common/inc"
    "${SDK_PATH}/platform/emlib/inc"
    "${SDK_PATH}/platform/common/inc"
    "${SDK_PATH}/platform/emdrv/gpiointerrupt/inc"
    "${SDK_PATH}/platform/common/toolchain/inc"
    "${SDK_PATH}/platform/service/system/inc"
    "${SDK_PATH}/platform/service/udelay/inc"
)

target_compile_definitions(slc_CatchTheBanana PUBLIC
    "DEBUG_EFM=1"
    "EFM32GG990F1024=1"
    "HFXO_FREQ=48000000"
    "SL_BOARD_NAME=\"BRD2200A\""
    "SL_BOARD_REV=\"B05\""
    "SL_COMPONENT_CATALOG_PRESENT=1"
)

target_link_libraries(slc_CatchTheBanana PUBLIC
    "-Wl,--start-group"
    "gcc"
    "c"
    "m"
    "nosys"
    "-Wl,--end-group"
)
target_compile_options(slc_CatchTheBanana PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m3>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-imacros sl_gcc_preinclude.h>"
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m3>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-imacros sl_gcc_preinclude.h>"
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m3>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-imacros sl_gcc_preinclude.h>"
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command )
set_property(TARGET slc_CatchTheBanana PROPERTY C_STANDARD 99)
set_property(TARGET slc_CatchTheBanana PROPERTY CXX_STANDARD 11)
set_property(TARGET slc_CatchTheBanana PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc_CatchTheBanana INTERFACE
    -mcpu=cortex-m3
    -mthumb
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:CatchTheBanana>/CatchTheBanana.map"
    -Wl,--gc-sections
    -Wl,--no-warn-rwx-segments
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
