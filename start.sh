#!/usr/bin/bash

cmake -B build -S . -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake
cmake --build build --config Debug

# 编译通过则运行
if [ $? -eq 0 ]; then
    ./build/bin/main
else
    echo "Build failed"
fi