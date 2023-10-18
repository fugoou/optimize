enable_disable_app () {
echo ""
echo ""
animate_typing "[ - ] Disable App [ 1 ]" "90"
animate_typing "[ - ] Enable App [ 2 ]" "90"
echo ""
echo -e "More information check ${G}https://t.me/fug00u/53${F}"
echo ""
echo -ne "${G}Select: ${F}"
read -s enblddsbl
while true; do
case $enblddsbl in
        1)
            printf "\e[101m\e[1;77mNOTE!\e[0m\n"
            echo ""
            echo "You can only enter 1 package, if you want another package, enter this menu again"
            echo ""
            echo -ne "${G}Enter Packpage:${F} "
            read -s disablex
            pm disable-user --user 0 $disablex
            echo ""
            ;;
        2)
            printf "\e[101m\e[1;77mNOTE!\e[0m\n"
            echo ""
            echo "You can only enter 1 package, if you want another package, enter this menu again"
            echo ""
            echo -ne "${G}Enter Packpage:${F} "
            read -s enablex
            pm enable --user 0 $enablex
            echo ""
            ;;
          *)
            echo "Invalid option."
            ;;
        esac 
        break
      done
}