CLANG=/home/toy/kernel/clang-r487747/bin
GCC32=/home/toy/kernel/arm-linux-androideabi-4.9/bin
GCC64=/home/toy/kernel/aarch64-linux-android-4.9/bin
PATH=$CLANG:$GCC64:$GCC32:$PATH
export PATH
export ARCH=arm64
export CLANG_TRIPLE=aarch64-linux-gnu
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-
echo $PATH

output_dir=out
pushd /run/media/toy/0af159ab-4b48-4901-b667-11903bde250f/kernel/xiaomi/sdm710
make O="$output_dir" \
            sdm670-perf_defconfig \
            xiaomi/sdm710-common.config \
            xiaomi/grus.config

make -j $(nproc) \
             O="$output_dir" \
             CC=clang



