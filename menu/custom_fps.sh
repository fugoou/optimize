custom_fps () {
echo ""
echo ""
echo -ne "${G}How much Max FPS do you want (E.g: 120.0):${F} "
read -s nick
settings put system peak_refresh_rate $nick
settings put system max_frame_rate $nick
echo -ne "${G}How much Min FPS do you want (E.g: 60.0):${F} "
read -s niko
settings put system min_refresh_rate $niko
settings put system min_frame_rate $niko
echo ""
cekfps=$(dumpsys display | grep -i refresh_rate)
echo "\033[90m${cekfps}\033[0m"
echo ""
echo "Done!"
}