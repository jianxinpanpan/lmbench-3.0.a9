make OS=armv7-linux CC=arm-linux-gnueabi-gcc LDFLAGS=--static
make  OS=armv7-linux BASE=../out_bins/$OS install
find ../out_bins/bin/ -type f -exec arm-linux-gnueabi-strip {} \;
