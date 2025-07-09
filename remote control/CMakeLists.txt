cmake_minimum_required(VERSION 3.10)
project(remote_monitor)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories(include)
find_package(libssh REQUIRED)

set(APP_SOURCES src/main.cpp src/ssh_connection.cpp src/hardware_monitor.cpp)

add_executable(remote_monitor ${APP_SOURCES})

target_link_libraries(remote_monitor ssh)
