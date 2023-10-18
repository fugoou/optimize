night_mode () {
echo ""
echo ""
exnable () {
cmd uimode night yes
settings put secure ui_night_mode 2
}
dxisable () {
cmd uimode night no
settings put secure ui_night_mode 1
}
animate_typing "[ - ] Enable [ 1 ]" "90"
animate_typing "[ - ] Disable [ 2 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s selc
while true; do
case $selc in
        1)
            exnable > /dev/null 2>&1
            echo ""
            echo "Done!"
            ;;
        2)
            dxisable > /dev/null 2>&1
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