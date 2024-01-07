author="@xchillds"
version="v8.0-final"
donate="https://saweria.co/fugoou"
log="/sdcard/Android/fugoou.log"

# colors
F='\033[0m'
G='\033[0;32m'
R='\033[0;31m'
N='\033[0;90m'

# device information
uptime=$(uptime)
kernel=$(uname -r)
android_sdk=$(getprop ro.build.version.sdk)
build_desc=$(getprop ro.build.description)
product=$(getprop ro.build.product)
manufacturer=$(getprop ro.product.manufacturer)
brand=$(getprop ro.product.brand)
model=$(getprop ro.product.model)
fingerprint=$(getprop ro.build.fingerprint)
arch=$(getprop ro.product.cpu.abi)
device=$(getprop ro.product.device)
android=$(getprop ro.build.version.release)
build=$(getprop ro.build.id)

# animation
animate_colors() {
    text="$1"
    colors=("41" "46" "43" "44" "45" "42")
    color_count=${#colors[@]}

    i=0
    while [ $i -lt $color_count ]; do
        current_color=${colors[i]}
        echo -ne "\e[1;${current_color}m$text\e[0m\r"
        sleep 0.5
        i=$((i + 1))
    done
}
animate_typing() {
    text="$1"
    color="$2"
    i=0
    while [ $i -lt ${#text} ]; do
        echo -en "\e[${color}m${text:$i:1}\e[0m"
        sleep 0.01
        i=$((i + 1))
    done
    echo
}
