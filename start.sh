#!/system/bin/sh

[ "$(id -u)" -ne 2000 ] && echo "No shell permissions." && exit 1

clear

. /storage/emulated/0/optimize/function.sh
. /storage/emulated/0/optimize/menu/fugoou.sh

echo -ne "\033[0;90mEnter password:${F} "
read -s password
if [ "$password" == "nickofajar" ]; then
    echo -e "${G}Password is correct. Access granted.${F}"
echo -ne "\033[0;90mEnter your Name:${F} "
read username
sleep 0.3
clear
text="Hello, $username! Welcome To"
delay=0.1
length=$(echo "$text" | wc -c)
i=1
while [ $i -lt $length ]; do
    char=$(echo "$text" | cut -c $i)
    echo -en "${G}${char}${F}"
    sleep $delay
    i=$((i + 1))
done
echo ""
echo ""
echo ""
animate_colors "Tweak Performance+ Without Root"
echo
echo ""
echo ""
animate_typing "Time: `date`" "32"
animate_typing "Version: ${version}" "32"
animate_typing "Author: @xchillds" "32"
animate_typing "Your Device Information:" "32"
echo ""
animate_typing "[ - ] Manufacturer: ${manufacturer}" "90"
animate_typing "[ - ] Brand: ${brand}" "90"
animate_typing "[ - ] Device: ${device}" "90"
animate_typing "[ - ] Product: ${product}" "90"
animate_typing "[ - ] Model: ${model}" "90"
animate_typing "[ - ] Fingerprint: ${fingerprint}" "90"
animate_typing "[ - ] ROM build description: ${build_desc}" "90"
animate_typing "[ - ] Architecture: ${arch}" "90"
animate_typing "[ - ] Android build: ${build}" "90"
animate_typing "[ - ] Android version: ${android}" "90"
animate_typing "[ - ] Android sdk: ${android_sdk}" "90"
animate_typing "[ - ] Kernel Version: ${kernel}" "90"
animate_typing "[ - ] Uptime: ${uptime}" "90"

while true; do
    echo ""
    animate_typing "Hello $username, this is the menu from Tweak Performance+ Without Root ${version}" "32"
    echo ""
    animate_typing "[ - ] Install & Uninstall Tweak [ 1 ]" "90"
    animate_typing "[ - ] Fullscreen & Immersive Getsure [ 2 ]" "90"
    animate_typing "[ - ] Set Game Performance+ [ 3 ]" "90"
    animate_typing "[ - ] Game_Overlay config Downscale [ 4 ]" "90"
    animate_typing "[ - ] Game_Overlay config FPS [ 5 ]" "90"
    animate_typing "[ - ] Dexopt background job all apps [ 6 ]" "90"
    animate_typing "[ - ] JIT optimization all apps [ 7 ]" "90"
    animate_typing "[ - ] Custom FPS [ 8 ]" "90"
    animate_typing "[ - ] Custom Animation & Duration Scale [ 9 ]" "90"
    animate_typing "[ - ] Custom DNS hostname [ 10 ]" "90"
    animate_typing "[ - ] Custom Hold Delay [ 11 ]" "90"
    animate_typing "[ - ] Game Driver Android 11 & 12+ [ 12 ]" "90"
    animate_typing "[ - ] Custom Renderer [ 13 ]" "90"
    animate_typing "[ - ] Custom Fstrim Interval [ 14 ]" "90"
    animate_typing "[ - ] Disable & Enable App [ 15 ]" "90"
    animate_typing "[ - ] Write Custom Settings [ 16 ]" "90"
    animate_typing "[ - ] Enable & Disable Night Mode [ 17 ]" "90"
    animate_typing "[ - ] Custom Display Size [ 18 ]" "90"
    animate_typing "[ - ] Saweria [ 19 ]" "90"
    animate_typing "[ - ] Quit [ 0 ]" "90"
    echo ""
    printf "\e[101m\e[1;77mNot all menu work, depending on the Android version!\e[0m\n"
    echo ""
    echo -ne "${G}Select: ${F}"
    read -s choice
    case $choice in
        1)
            tweak
            ;;
        2)
            fullscreen_immersive_getsure
            ;;
        3)
            game_performance
            ;;
        4)
            game_overlay_downscale
            ;;
        5)
            game_overlay_fps
            ;;
        6)
            dexopt_background
            ;;
        7)
            jit
            ;;
        8)
            custom_fps
            ;;
        9)
            custom_animation_and_duration_scale
            ;;
        10)
            custom_dns
            ;;
        11)
            custom_hold_delay
            ;;
        12)
            game_driver
            ;;
        13)
            custom_render
            ;;
        14)
            custom_fstrim_interval
            ;;
        15)
            enable_disable_app
            ;;
        16)
            custom_settings
            ;;
        17)
            night_mode
            ;;
        18)
            custom_display_size
            ;;
        19)
            echo "Only Dana, Ga maksa kok, cuma buat penyemangat gw aja kalo ada orang yang mau support gw :)"
            sleep 1
            am start -a android.intent.action.VIEW -d ${donate} > /dev/null 2>&1
            ;; 
        0)
            echo -e "${R}We're done${F}"
            break
            ;;
        *)
            echo -e "${R}Wrong input${F}"
            ;;
    esac
done
else
    echo -e "${R}Password is incorrect. Access denied.${F}"
fi