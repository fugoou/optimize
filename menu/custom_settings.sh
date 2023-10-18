custom_settings () {
echo ""
echo ""
animate_typing "[ - ] Global [ 1 ]" "90"
animate_typing "[ - ] Secure [ 2 ]" "90"
animate_typing "[ - ] System [ 3 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s nakun
while true; do
case $nakun in
        1)
            echo -ne "${G}String:${F} "
            read -s globals
            echo -ne "${G}Value:${F} "
            read -s globalv
            settings put global $globals $globalv
            echo ""
            echo "Success Setting $globals to $(settings get global $globals)"
            ;;
        2)
            echo -ne "${G}String:${F} "
            read -s secures
            echo -ne "${G}Value:${F} "
            read -s securev
            settings put system $secures $securev
            echo ""
            echo "Success Setting $secures to $(settings get global $secures)"
            ;;
        3)
            echo -ne "${G}String:${F} "
            read -s systems
            echo -ne "${G}Value:${F} "
            read -s systemv
            settings put system $systems $systemv
            echo ""
            echo "Success Setting $systems to $(settings get global $systems)"
            ;;
          *)
            echo "Invalid option."
            ;;
        esac 
        break
      done
}