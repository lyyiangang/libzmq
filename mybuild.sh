NDK_ROOT=${HOME}/331G/android_toolchain/arm64/
cd build/
cmake .. -D WITH_PERF_TOOL=OFF -D ZMQ_BUILD_TESTS=OFF \
-D ENABLE_CPACK=OFF -D CMAKE_BUILD_TYPE=Release  -D CMAKE_INSTALL_PREFIX=../output \
-D CMAKE_C_COMPILER=${NDK_ROOT}/bin/aarch64-linux-android-gcc \
-D CMAKE_CXX_COMPILER=${NDK_ROOT}/bin/aarch64-linux-android-g++  \
-D CMAKE_SYSROOT=${NDK_ROOT}/sysroot
make -j3 install