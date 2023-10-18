custom_fstrim_interval () {
echo ""
echo ""
animate_typing "[ - ] Every Reboot [ 1 ]" "90"
animate_typing "[ - ] Every Day [ 2 ]" "90"
animate_typing "[ - ] Every Another Day [ 3 ]" "90"
animate_typing "[ - ] Every Three Day [ 4 ]" "90"
animate_typing "[ - ] Every Week [ 5 ]" "90"
animate_typing "[ - ] Every Every Month [ 6 ]" "90"
animate_typing "[ - ] Unset [ 7 ]" "90"
animate_typing "[ - ] Never Force trim [ 8 ]" "90"
animate_typing "[ - ] Trim Cache Now [ 9 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s trimx
while true; do
case $trimx in
        1)
            settings put global fstrim_mandatory_interval 1
            echo ""
            echo "Done!"
            ;;
        2)
            settings put global fstrim_mandatory_interval 86400000
            echo ""
            echo "Done!"
            ;;
        3)
            settings put global fstrim_mandatory_interval 172800000
            echo ""
            echo "Done!"
            ;;
        4)
            settings put global fstrim_mandatory_interval 259200000
            echo ""
            echo "Done!"
            ;;
        5)
            settings put global fstrim_mandatory_interval 604800000
            echo ""
            echo "Done!"
            ;;
        6)
            settings put global fstrim_mandatory_interval 2592000000
            echo ""
            echo "Done!"
            ;;
        7)
            settings put global fstrim_mandatory_interval null
            echo ""
            echo "Done!"
            ;;
        8)
            settings put global fstrim_mandatory_interval 0
            echo ""
            echo "Done!"
            ;;
        9)
            pm trim-caches 99999G
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