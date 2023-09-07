# Tweak Performance+ Without root

> useful tweaks to improve the performance of your android, no root, just a terminal with adb connection

<details>
  <summary>Feature
  </summary>
  <br>

* Optimize CPU, GPU, FPS, & Network
* Vulkan render
* Change Light theme for performance
* Kill-all activity
* GFX composition
* Improve Idle drain
* Improve touch ( 250 press timeout )
* Trim Cache
* Fstrim every 1 day
* Fast Charging
* Enable Fixed-performance mode
* Disable Thermal service override
* Disable AA
* Game Driver Android 11 & 12+
* Game Overlay Config Downscale
* Cloud flare DNS
* Menu All-in-one
* Menu Custom Game Overlay Config FPS Android 13
* Menu Custom DNS
* Menu Custom Animation & Duration Scale
* Menu Custom FPS
* Menu Fullscreen and impressive getsure
* Menu JIT optimization all apps
* Menu Dexopt background job
* and more...

</details>

<details>
  <summary>Preview
  </summary>
  <br>
https://youtu.be/
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
