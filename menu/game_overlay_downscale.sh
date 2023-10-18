game_overlay_downscale () {
echo ""
echo ""
printf "\e[101m\e[1;77mNOTE!\e[0m\n"
echo ""
echo "You can only enter 1 package, if you want another package, enter this menu again"
echo ""
echo ""
echo -ne "${G}Enter Package Name:${F} "
read -s ofpsg
echo -ne "${G}How much Downscale do you want? recommendation 1.0 to 0.5 :${F} "
read -s ofpsga
device_config put game_overlay $ofpsg mode=2,downscaleFactor=$ofpsga:mode=3,downscaleFactor=$ofpsga > /dev/null 2>&1
sleep 1
echo "Done! more information check ${G}https://developer.android.com/games/gamemode/gamemode-interventions${F}"
}