game_overlay_fps () {
echo ""
echo ""
printf "\e[101m\e[1;77mNOTE!\e[0m\n"
echo ""
echo "You can only enter 1 package, if you want another package, enter this menu again"
echo ""
echo ""
echo -ne "${G}Enter Package Name:${F} "
read -s fpspgc
echo -ne "${G}What FPS number do you want?:${F} "
read -s fpsgd
device_config put game_overlay $fpspgc mode=2,fps=$fpsgd:mode=3,fps=$fpsgd > /dev/null 2>&1
sleep 1
echo "Done! more information check ${G}https://developer.android.com/games/gamemode/fps-throttling${F}"
}