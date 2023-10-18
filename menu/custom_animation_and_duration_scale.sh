custom_animation_and_duration_scale () {
echo ""
echo ""
printf "\e[101m\e[1;77mNOTE!\e[0m\n"
echo ""
echo "I recommend between numbers 1.0 to 0.0"
echo ""
echo ""
echo -ne "${G}Window Animation Scale (E.g: 0.5):${F} "
read -s was
settings put global window_animation_scale $was
echo -ne "${G}Transition Animation Scale (E.g: 0.5):${F} "
read -s tas
settings put global transition_animation_scale $tas
echo -ne "${G}Animator Duration Scale (E.g: 0.5):${F} "
read -s adc
settings put global animator_duration_scale $adc
echo ""
echo "Done!"
}