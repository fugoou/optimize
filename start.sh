#!/system/bin/sh

[ "$(id -u)" -ne 2000 ] && echo "No shell permissions." && exit 1

rm -rf /data/local/tmp/*

if [ "$(getconf LONG_BIT)" == "64" ]; then
    cp /sdcard/optimize/64 /data/local/tmp
    cd /data/local/tmp
    chmod a+x 64
    ./64
else
    cp /sdcard/optimize/32 /data/local/tmp
    cd /data/local/tmp
    chmod a+x 32
    ./32
fi
