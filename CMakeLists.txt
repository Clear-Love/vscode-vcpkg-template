cmake_minimum_required(VERSION 3.0.0)
project(vscode-vcpkg-template VERSION 0.1.0 LANGUAGES C CXX)

# 设置编译器
set(CMAKE_CXX_COMPILER g++)

# 设置C++标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 设置输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# 添加源文件 src递归查找所有.cpp文件
file(GLOB_RECURSE SOURCES "src/*.cpp")

find_package(fmt CONFIG REQUIRED)

# 添加可执行文件
add_executable(main ${SOURCES})

message(STATUS "VCPKG_TARGET_TRIPLET: ${CMAKE_TOOLCHAIN_FILE}")
# 指定编译输出路径
set_target_properties(main PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

target_link_libraries(main PRIVATE fmt::fmt)