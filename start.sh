#!/system/bin/sh

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
cmd notification post -S bigtext -t "Tweak Performance+ ${version}" 'Tag' "Yahoo~ $username!, Welcome :D" > /dev/null 2>&1
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
animate_typing "Author: ${author}" "32"
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
    animate_typing "[ - ] Monolith [ 6 ]" "90"
    animate_typing "[ - ] Custom FPS [ 7 ]" "90"
    animate_typing "[ - ] Custom Animation & Duration Scale [ 8 ]" "90"
    animate_typing "[ - ] Custom DNS hostname [ 9 ]" "90"
    animate_typing "[ - ] Custom Hold Delay [ 10 ]" "90"
    animate_typing "[ - ] Game Driver Android 11 & 12+ [ 11 ]" "90"
    animate_typing "[ - ] Custom Renderer [ 12 ]" "90"
    animate_typing "[ - ] Custom Fstrim Interval [ 13 ]" "90"
    animate_typing "[ - ] Disable & Enable App [ 14 ]" "90"
    animate_typing "[ - ] Write Custom Settings [ 15 ]" "90"
    animate_typing "[ - ] Enable & Disable Night Mode [ 16 ]" "90"
    animate_typing "[ - ] Custom Display Size [ 17 ]" "90"
    animate_typing "[ - ] Doze Tweak [ 18 ]" "90"
    animate_typing "[ - ] Downscale [ 19 ]" "90"
    animate_typing "[ - ] Cachie [ 20 ]" "90"
    animate_typing "[ - ] Swap [ 21 ]" "90"
    animate_typing "[ - ] Saweria [ 22 ]" "90"
    animate_typing "[ - ] Quit [ 0 ]" "90"
    echo ""
    echo -e "\e[41mNot all menu work, depending on the Android version!\e[0m"
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
            monolith
            ;;
        7)
            custom_fps
            ;;
        8)
            custom_animation_and_duration_scale
            ;;
        9)
            custom_dns
            ;;
        10)
            custom_hold_delay
            ;;
        11)
            game_driver
            ;;
        12)
            custom_render
            ;;
        13)
            custom_fstrim_interval
            ;;
        14)
            enable_disable_app
            ;;
        15)
            custom_settings
            ;;
        16)
            night_mode
            ;;
        17)
            custom_display_size
            ;;
        18)
            doze_tweak
            ;;
        19)
            downscale
            ;;
        20)
            cachie
            ;;
        21)
            swap
            ;;
        22)
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
