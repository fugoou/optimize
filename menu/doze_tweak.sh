doze_tweak () {
echo ""
echo "" 
echo "\033[0;90m[ - ] To ignore Deep Doze and discard any motion by increasing inactive_to and motion_inactive_to timeout to a very large number (e.g. 30 days) so that Deep Doze never goes into its IDLE state and only Light Doze can manage to its IDLE state. [ 1 ]"
echo ""
echo "[ - ] To ignore Light Doze for whatever reason by doing similar setup with light_after_inactive_to so that Light Doze probably never enters IDLE state. [ 2 ]"
echo ""
echo "[ - ] To ignore Deep Doze and use Light Doze mimic Deep Doze timing. [ 3 ]"
echo ""
echo "[ - ] To idle causaully at the begining and increasingly keep idle as much as possible without taking motion into account by ignoring the real Deep Doze and tuning Light Doze so that it will begin idle less than one minute after phone inactive and stay idle from 30 minutes to 24 hours with increasing factor 1.5; Maintenance task would be performed for maximal 30 seconds and any alarm allowed to wake up Doze from idle would take less effect. [ 4 ]"
echo ""
echo "[ - ] To idle as much as possible without taking motion into account by ignoring the real Deep Doze and tuning Light Doze so that it will be trapped in IDLE state as long as possible. Maintenance task would be performed about twice a day for maximal 30 seconds and any alarm allowed to wake up Doze from idle would take less effect. [ 5 ]"
echo ""
echo "[ - ] Reset [ 6 ]${F}"
echo ""
echo -ne "${G}Select: ${F}"
read -s selc
while true; do
case $selc in
        1)
            echo ""
            settings put global device_idle_constants inactive_to=2592000000,motion_inactive_to=2592000000
            echo "Done!"
            ;;
        2)
            echo ""
            settings put global device_idle_constants light_after_inactive_to=2592000000
            echo "Done!"
            ;;
        3)
            echo ""
            settings put global device_idle_constants inactive_to=2592000000,motion_inactive_to=2592000000,light_after_inactive_to=3000000,light_max_idle_to=21600000,light_idle_to=3600000,light_idle_maintenance_max_budget=600000,min_light_maintenance_time=30000
            echo "Done!"
            ;;
        4)
            echo ""
            settings put global device_idle_constants inactive_to=2592000000,motion_inactive_to=2592000000,light_after_inactive_to=20000,light_pre_idle_to=30000,light_max_idle_to=86400000,light_idle_to=1800000,light_idle_factor=1.5,light_idle_maintenance_max_budget=30000,light_idle_maintenance_min_budget=10000,min_time_to_alarm=60000
            echo "Done!"
            ;;
        5)
            echo ""
            settings put global device_idle_constants inactive_to=2592000000,motion_inactive_to=2592000000,light_after_inactive_to=15000,light_pre_idle_to=30000,light_max_idle_to=86400000,light_idle_to=43200000,light_idle_maintenance_max_budget=30000,light_idle_maintenance_min_budget=10000,min_time_to_alarm=60000
            echo "Done!"
            ;;
        6)
           settings delete global device_idle_constants
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