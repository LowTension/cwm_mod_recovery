This is a modified version of **CWM Recovery 6.0.5.1** from cm-11.0 branch. Use it with CM-11.0 building environment.
It includes more features than original clockworkmod recovery, and despite the fact that was first made for MTK powered phones, it can be used for other phones as well.

____

Some of the features:
- *Aroma File Manager support*, ported from [sk8erwitskil recovery](https://github.com/sk8erwitskil) - reworked and adapted to cm-11.0;
- *Automatic get mtk partitions size*, ported from [PhilZ Touch recovery](https://github.com/PhilZ-cwm6/philz_touch_cwm6) who ported it from [Dees-Troy - TWRP](https://github.com/TeamWin/Team-Win-Recovery-Project);
- Separate *wipe menu*;
- Separate *power menu*;
- *Advanced backup/restore menu*;
- Rainbow UI enabler menu;
- customized GUI;
- the Root solution provided by [Chainfire](http://forum.xda-developers.com/showthread.php?t=1538053) for free on [his page](http://download.chainfire.eu/696/SuperSU/UPDATE-SuperSU-v2.46.zip);
- and some other;
- some of the features are inspired from [ProjectOpenCannibal Recovery](https://github.com/ProjectOpenCannibal/android_bootable_recovery);

____

You can check [my building from source guide](http://forum.xda-developers.com/android/development/guide-how-to-build-cwm-based-recovery-t2973804).
To build, do it like with any other CWM recovery, but it is important to set up a flag in BoardConfig for your device screen res width `DEVICE_SCREEN_WIDTH := 540` and use yours - 540 here is just for example. It will work without it, but I made different size images for better fit on screen. The possible width to set are: 240, 320, 480, 540, 600, 720, 768, 800, 1080. If your screen width is not in the list, choose one close to it. Also, if you don't set a flag for this, it will be used a general set of images. And if you don't want to replace the stock CWM recovery folder, you can add this as "recovery-carliv" folder in "bootable" along with "recovery" and "recovery-cm". In this case you will need another flag on BoardConfig: `RECOVERY_VARIANT := carliv`.
Also you can choose a font that will look better on your screen: `BOARD_USE_CUSTOM_RECOVERY_FONT := \"font28_17x33.h\"`. If you don't set this, it will be used a preset option for your screen resolution - I made very carefully that selection, so it should work well on your screen.

_____

For MTK phones, there is need of another flag in BoardConfig `BOARD_HAS_MTK := true` to activate MTK specific functions and for phones with MTK SOC up to mt6592 `BOARD_NEEDS_MTK_GETSIZE := true` to be able to backup and restore boot partition. 
If your MTK phone has a custpack partition (mostly Alcatel and TCL phones), the recovery already include the support for it.

____

You don't need to change anything to add your credits in build, because the code will add it from your computer with shell, like in building kernels: it will print on screen "**Compiled by yourusername@yourhostname on: date**".

Enjoy!
