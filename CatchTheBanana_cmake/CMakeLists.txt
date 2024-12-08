# Define minimal required version of CMake.
cmake_minimum_required(VERSION "3.25")

# Project definition
project(
	CatchTheBanana
	VERSION 1.0
	LANGUAGES C CXX ASM
)

# Include the definition of the slc_CatchTheBanana target,
# which contains the content of the SLC project
include(CatchTheBanana.cmake)

add_executable(CatchTheBanana
    # Add additional sources here
)

target_include_directories(CatchTheBanana PUBLIC
    # Add additional include paths here
)

target_compile_definitions(CatchTheBanana PUBLIC
    # Add additional macros here
)

target_compile_options(CatchTheBanana PUBLIC
    # Set additional compiler flags here
)

target_link_options(CatchTheBanana PUBLIC
    # Set additional linker flags here
)

# Link with the content defined in the SLC project
target_link_libraries(CatchTheBanana PRIVATE
    slc_CatchTheBanana
)

# Include managed project content if available
include(CatchTheBanana_project.cmake OPTIONAL RESULT_VARIABLE managed_project)
if(managed_project)
    message(STATUS "Using managed project content from ${managed_project}")
endif()

# Force the gcc linker command
set_target_properties(CatchTheBanana PROPERTIES LINKER_LANGUAGE C)

# Create .bin, .hex and .s37 artifacts after building the project
add_custom_command(TARGET CatchTheBanana
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O srec "$<TARGET_FILE:CatchTheBanana>" "$<TARGET_FILE_DIR:CatchTheBanana>/$<TARGET_FILE_BASE_NAME:CatchTheBanana>.s37"
    COMMAND ${CMAKE_OBJCOPY} -O ihex "$<TARGET_FILE:CatchTheBanana>" "$<TARGET_FILE_DIR:CatchTheBanana>/$<TARGET_FILE_BASE_NAME:CatchTheBanana>.hex"
    COMMAND ${CMAKE_OBJCOPY} -O binary "$<TARGET_FILE:CatchTheBanana>" "$<TARGET_FILE_DIR:CatchTheBanana>/$<TARGET_FILE_BASE_NAME:CatchTheBanana>.bin" 
)

# Run post-build pipeline to perform additional post-processing
if(post_build_command)
add_custom_command(TARGET CatchTheBanana
    POST_BUILD
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/..
    COMMAND ${post_build_command}
)
endif()