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
    "../main.c"
)

target_include_directories(slc_CatchTheBanana PUBLIC
   "../config"
   "../autogen"
   "../."
    "${SDK_PATH}/platform/Device/SiliconLabs/EFM32GG/Include"
    "${SDK_PATH}/hardware/board/inc"
    "${SDK_PATH}/platform/CMSIS/Core/Include"
    "${SDK_PATH}/platform/service/device_init/inc"
    "${SDK_PATH}/platform/emlib/inc"
    "${SDK_PATH}/platform/common/inc"
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

# BEGIN_SIMPLICITY_STUDIO_METADATA=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wPxn92g+31otY5ccBF7gpBPWefTxCWNtvfSW0FH7P5jsS1TfTowtaD53QZxMk1F10pgiu307bQ6x8+o4o24nuEn55hbZa3ITfCqhbf29xg1Ja5P6lHB54wBLqbNEWpp5LUh2KHJxNqcp70b3txaZjYfiGNtj7iJ/m+ze1r37PoT5w1CtAPj0fxbBoBlMr2b7hD/kkPOPTrKbk3nfNG2XDr0dFUcVznIia++akY1C5NvItz71f1nwfHLl437crsyX1Lb5+zXw+unBEKwvpIiKtKyvcu2Na26bri+eak4zqCgke23eChPZ4IAXdp8Sn72bLNkNbnnvif2GXtwdYiRSEssEhd/h/AifJ8jn4Bzq43O00cbcu+nV6Ql54fkMKe4takjwq93ze+vrG5voba1ZUXrg3t842/RPojmtXthueaeKH7GVrt3c05ad9atVcnY0W15c3VxenF7c/dNY3t2fXVwbeA18c357d3G+nJ3M/kjviidFt5qdrPDHFV7rmo8IV/bAevjJjJz05o04fXyS/kgTpP/h3id0cCr74TKwsr14+sUJ+6N84T19fMT+CM0I9z9VufKKmT7+nP3A8jOx/L4U4p9xaWTKUzeZGBv/199mn/8fCebMOA===END_SIMPLICITY_STUDIO_METADATA
