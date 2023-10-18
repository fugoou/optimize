game_driver () {
echo ""
echo ""
echo "E.g 1: com.mobile.legends"
echo "E.g 2: com.mobile.legends,com.dts.freefireth"
echo ""
echo -ne "${G}Enter Package Name:${F} "
read -s drv
settings put global game_driver_all_apps 1; settings put global game_driver_opt_out_apps 1; settings put global game_driver_opt_in_apps ${drv}; settings put global updatable_driver_all_apps 1; settings put global updatable_driver_production_opt_out_apps 1; settings put global updatable_driver_production_opt_in_apps $drv
echo ""
echo "Done!"
}