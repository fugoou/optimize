game_performance () {
echo ""
echo ""
printf "\e[101m\e[1;77mNOTE!\e[0m\n"
echo ""
echo "this combines game mode performance, game_overlay config fps 120hz, jit optimization, and disable battery optimization"
echo ""
echo "You can only enter 1 package, if you want another package, enter this menu again"
echo ""
echo "E.g : com.dts.freefireth"
echo ""
echo -ne "${G}Enter Package Name:${F} "
read -s performa
echo "The process may take a long time."
wew () {
cmd game mode performance $performa
device_config put game_overlay $performa mode=2,fps=120
dumpsys deviceidle whitelist +$performa
appops set $performa RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f $performa
cmd package compile -m speed --secondary-dex -f $performa
cmd package compile -r first-boot -f $performa
cmd package compile -m speed --check-prof false -f $performa
}
wew > /dev/null 2>&1
echo "Done!"
}