cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(stlcd C CXX ASM)
set(CMAKE_C_STANDARD 11)
pico_sdk_init()

add_executable(stlcd
    stlcd.c
    glcd.c
    glcdfont.c
)

pico_enable_stdio_uart(stlcd 1)

pico_add_extra_outputs(stlcd)

target_link_libraries(stlcd pico_stdlib hardware_spi)