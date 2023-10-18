fullscreen_immersive_getsure () {
echo ""
echo ""
animate_typing "[ - ] Enable [ 1 ]" "90"
animate_typing "[ - ] Disable [ 2 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s selc
while true; do
case $selc in
        1)
            echo ""
            echo ""
            echo "Enable Fullscreen & Immersive Getsure..."
            settings put global policy_control immersive.navigation=*com.android.systemui*
            sleep 1
            settings put global policy_control immersive.full=*
            echo ""
            echo "Done!"
            ;;
        2)
            echo ""
            echo ""
            echo "Disable Fullscreen & Immersive Getsure..."
            settings put global policy_control null*
            sleep 1
            settings put global policy_control null
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