# Install script for directory: /home/ewout-laptop-ubuntu/ncs/v3.1.0/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/ewout-laptop-ubuntu/ncs/toolchains/c5be9c56c7/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/cmsis_6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/hal_tdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/nrf_wifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ewout-laptop-ubuntu/Repositories/nRF_practise/LED_button_interrupt/build/LED_button_interrupt/zephyr/cmake/reports/cmake_install.cmake")
endif()

