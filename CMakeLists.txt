
if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
  message ( FATAL_ERROR "Prevented in-tree build." )
endif (  )

set ( CMAKE_LEGACY_CYGWIN_WIN32 OFF )

cmake_minimum_required ( VERSION 3.6.0 FATAL_ERROR )

set ( CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/cmake/avr.cmake" )
set ( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake" )

project ( AVR_PROJECT VERSION 0.0.1.0 LANGUAGES C )

avr_add_executable ( qrng ${CMAKE_SOURCE_DIR}/src/qrng.c
  PROPERTIES
    MCU      atmega328p
    MCU_FREQ 16000000
)

avr_target_include_directories ( qrng ${CMAKE_SOURCE_DIR}/include )

avr_disasm ( qrng )

avr_upload ( qrng
  OPTIONS
    PROGRAMMER      arduino
    PROGRAMMER_PORT /dev/ttyUSB0
    PROGRAMMER_RATE 115200
)

add_subdirectory ( ${CMAKE_SOURCE_DIR}/tests     )
add_subdirectory ( ${CMAKE_SOURCE_DIR}/utilities )
