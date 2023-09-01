# Tweak Performance+ Without root

> useful tweaks to improve the performance of your android, no root, just a terminal with adb connection

<details>
  <summary>Feature
  </summary>
  <br>

* Optimize CPU, GPU, FPS, & Network
* Vulkan render with layer extension fast render VK
* Change Light theme for performance
* Kill-all activity
* Multi-depth composition
* Improve Idle drain
* Improve touch ( 250 press timeout )
* Trim Cache
* Fstrim every 1 day
* Fast Charging
* Enable Fixed-performance mode
* Disable Thermal service override
* Disable AA
* Game Driver Android 11 & 12+
* and more...

</details>

<details>
  <summary>Preview
  </summary>
  <br>
https://youtu.be/Sv4cmi8Ffg8?si=BBY1xcja8vA_dLHx
</details>

## How to Execute Script??

in your terminal like termux, connect with adb first!
after putting the files into /sdcard/optimize/`daemon`

```bash
rm -rf /data/local/tmp/* && cp /sdcard/optimize/daemon /data/local/tmp && cd /data/local/tmp && chmod a+x /data/local/tmp/daemon && ./daemon
```

### Game Driver For Android 11 & 12+ Guide

in /sdcard/optimize/`game_driver.txt`
put the name of the game package that you want to activate as a game driver, if two or more add a comma ( , ) for my example, i give 2 examples:

E.g 1 :
```bash
com.nexon.bluearchive
```
E.g 2 :
```bash
com.nexon.bluearchive,com.supercell.clashofclans
```
