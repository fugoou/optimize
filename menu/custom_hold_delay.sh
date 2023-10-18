custom_hold_delay () {
echo ""
echo ""
printf "\e[101m\e[1;77mNOTE!\e[0m\n"
echo "The smaller the number, the touch and hold delay will be faster, the larger the number the touch and hold delay will be longer. Recommendation: between 100-300"
echo ""
echo -ne "${G}What number do you want?:${F} "
read -s xchlf
settings put secure multi_press_timeout $xchlf
settings put secure long_press_timeout $xchlf
echo ""
echo "Done!"
}