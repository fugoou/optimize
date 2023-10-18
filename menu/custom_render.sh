custom_render () {
echo ""
echo ""
animate_typing "[ - ] Vulkan [ 1 ]" "90"
animate_typing "[ - ] Skia OpenGL [ 2 ]" "90"
animate_typing "[ - ] OpenGL [ 3 ]" "90"
animate_typing "[ - ] Custom Render [ 4 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s nakun
while true; do
case $nakun in
        1)
            setprop debug.hwui.renderer vulkan
            echo ""
            echo "Done!"
            ;;
        2)
            setprop debug.hwui.renderer skiagl
            echo ""
            echo "Done!"
            ;;
        3)
            setprop debug.hwui.renderer opengl
            echo ""
            echo "Done!"
            ;;
        4)
            echo -ne "${G}Enter custom Renderer what you want:${F} "
            read -s renderx
            setprop debug.hwui.renderer $renderx
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