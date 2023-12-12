game_driver () {
echo ""
echo ""
animate_typing "[ - ] Android 11 [ 1 ]" "90"
animate_typing "[ - ] Android 12+ [ 2 ]" "90"
animate_typing "[ - ] Reset to default [ 3 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s nakun
while true; do
case $nakun in
        1)
            echo "E.g 1: com.mobile.legends"
            echo "E.g 2: com.mobile.legends,com.dts.freefireth"
            echo ""
            echo -ne "${G}Enter Package Name:${F} "
            read -s drvv
            settings put global game_driver_all_apps 1
            settings put global game_driver_opt_out_apps 1
            settings put global game_driver_opt_in_apps $drvv
            ;;
        2)
            echo "E.g 1: com.mobile.legends"
            echo "E.g 2: com.mobile.legends,com.dts.freefireth"
            echo ""
            echo -ne "${G}Enter Package Name:${F} "
            read -s drv
            settings put global updatable_driver_all_apps 1
            settings put global updatable_driver_production_opt_out_apps
            settings put global updatable_driver_production_opt_in_apps $drv
            echo ""
            echo "Done!"
            ;;
        3)
            settings delete global game_driver_all_apps
            settings delete global game_driver_opt_out_apps
            settings delete global game_driver_opt_in_apps
            settings delete global updatable_driver_all_apps
            settings delete global updatable_driver_production_opt_out_apps
            settings delete global updatable_driver_production_opt_in_apps
            echo ""
            echo "Done!"
            ;;
          *)
            echo "Invalid option."
            ;;
        esac 
        break
      done
}