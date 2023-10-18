custom_display_size () {
echo ""
echo ""
echo "${G}This is information about the Size and Density of your Device${F}"
echo ""
echo "${G}Size:${F}"
wm size
echo "${G}Density:${F}"
wm density
echo ""
echo ""
animate_typing "[ - ] Custom Size [ 1 ]" "90"
animate_typing "[ - ] Custom Density [ 2 ]" "90"
animate_typing "[ - ] Set to default [ 3 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s custmds
while true; do
case $custmds in
        1)
            echo ""
            echo ""
            echo -ne "${G}Width:${F} "
            read -s wt
            echo -ne "${G}Height:${F} "
            read -s ht
            wm size "${wt}x${ht}"
            ;;
        2)
            echo ""
            echo ""
            echo -ne "${G}Density:${F} "
            read -s d
            wm density $d
            ;;
        3)
            wm size reset
            sleep 1
            wm density reset
            ;;
          *)
            echo "Invalid option."
            ;;
        esac 
        break
      done
}