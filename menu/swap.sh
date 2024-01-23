swap () {
echo ""
echo ""
animate_typing "[ - ] Custom Swap Size [ 1 ]" "90"
animate_typing "[ - ] Delete Swap [ 2 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s mswap
while true; do
case $mswap in
        1)
            echo -ne "${G}Swap Size (MB):${F} "
            read -s swap_size
            echo -ne "${G}do you want to swap with size $swap_size MB? enter (y/n):${F} "
            read -s choice
            if [ "$choice" == "y" ]; then
            echo ""
            dd if=/dev/zero of=/data/local/tmp/swap bs=1048576 count=$swap_size
            mkswap /data/local/tmp/swap
            free
            else
            echo ""
            fi
            ;;
        2)
            rm -f /data/local/tmp/swap
            echo "Done!"
            ;;
          *)
            echo "Invalid option."
            ;;
        esac 
        break
      done
}