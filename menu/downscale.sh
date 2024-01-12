downscale () {
echo ""
echo ""
animate_typing "The larger the number, the higher the resolution; the smaller the number, the lower the resolution." "41"
echo ""
animate_typing "recommendation 0.7 - 0.9" "42"
echo ""
echo ""
echo -ne "${G}Enter Downscale Factor:${F} "
read -s scale_factor

current_resolution=$(wm size | awk '{print $3}')
IFS='x' read -r width height <<< "$current_resolution"
new_width=$(printf "%.0f" $(echo "$width * $scale_factor" | bc -l))
new_height=$(printf "%.0f" $(echo "$height * $scale_factor" | bc -l))
new_resolution="${new_width}x${new_height}"

echo ""
echo "${G}this is preview of resolution $new_resolution, will reset again after 5 seconds, Density size is automatically reset${F}"
sleep 1
wm density reset
wm size $new_resolution
sleep 5
wm size reset

echo ""
echo -ne "${G}are you sure you want to change the resolution to $new_resolution? if yes, enter (y/n):${F} "
read -s choice
if [ "$choice" == "y" ]; then
  wm size $new_resolution
  #echo "$new_resolution"
  echo ""
  echo "Resolution changed from $current_resolution to $new_resolution"
  else
    echo ""
fi
}
