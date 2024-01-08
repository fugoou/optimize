cachie () {
echo ""
echo ""
echo "${G}[ - ] Low-storage minimum reporting threshold [ 1 ]${F}"
echo "${N}Minimum available storage percentage to consider the device to be running low on storage${F}"
echo ""
echo "${G}[ - ] Low-storage maximum byte threshold [ 2 ]${F}"
echo "${N}Maximum number of bytes that limits the percentage above${F}"
echo ""
echo "${G}[ - ] Max-storage minimum bytes [ 3 ]${F}"
echo "${N}Maximum number of available storage to consider the device to be completely full; this number is reserved for the system to avoid system-wide crashing${G}"
echo ""
echo "${G}[ - ] Cache minimum threshold [ 4 ]${F}"
echo "${N}Minimum storage percentage to allocate for cached data${F}"
echo ""
echo "${G}[ - ] Cache maximum byte threshold [ 5 ]${F}"
echo "${N}Maximum number of bytes that limits the percentage above${F}"
echo ""
echo "${G}[ - ] Set to default [ 6 ]${F}"
echo ""
echo -ne "${G}Select: ${F}"
read -s cachiee
while true; do
case $cachiee in
        1)
            echo -ne "${G}Enter value:${F} "
            read -s sys_storage_threshold_percentage
            settings put global sys_storage_threshold_percentage $sys_storage_threshold_percentage
            echo ""
            echo "Done!"
            ;;
        2)
            echo -ne "${G}Enter Value:${F} "
            read -s sys_storage_threshold_max_bytes
            settings put global sys_storage_threshold_max_bytes $sys_storage_threshold_max_bytes
            echo ""
            echo "Done!"
            ;;
        3)
            echo -ne "${G}Enter Value:${F} "
            read -s sys_storage_full_threshold_bytes
            settings put global sys_storage_full_threshold_bytes $sys_storage_full_threshold_bytes
            echo ""
            echo "Done!"
            ;;
        4)
            echo -ne "${G}Enter value:${F} "
            read -s sys_storage_cache_percentage
            settings put global sys_storage_cache_percentage $sys_storage_cache_percentage
            echo ""
            echo "Done!"
            ;;
        5)
            echo -ne "${G}Enter value:${F} "
            read -s sys_storage_cache_max_bytes
            settings put global sys_storage_cache_max_bytes $sys_storage_cache_max_bytes
            echo ""
            echo "Done!"
            ;;
        6)
            cachl () {
            settings delete global sys_storage_threshold_percentage
            settings delete global sys_storage_threshold_max_bytes
            settings delete global sys_storage_full_threshold_bytes
            settings delete global sys_storage_cache_percentage
            settings delete global sys_storage_cache_max_bytes
            }
            cachl > /dev/null 2>&1
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
