This is a modified version of **CWM Recovery 6.0.3.7** from cm-10.1 branch. Use it with CM-10.1 building environment.
This version was made for MTK powered phones with a special partition "custpack" - mostly Alcatel or TCL phones. Don't use it if you don't have such a phone, use the regular version instead.
____

Some of the features:
- *Aroma File Manager support*, ported from [sk8erwitskil recovery](https://github.com/sk8erwitskil);
- *Automatic get mtk partitions size*, ported from [PhilZ Touch recovery](https://github.com/PhilZ-cwm6/philz_touch_cwm6) who ported it from [Dees-Troy - TWRP](https://github.com/TeamWin/Team-Win-Recovery-Project);
- *more fonts* to choose from, all credits to [xiaolu](https://github.com/xiaolu/android_bootable_recovery) who create them;
- Separate *wipe menu*;
- Separate *power menu*;
- for MTK phones separate *backup/restore Nvram menu*;
- *Advanced backup/restore menu*;
- *Tar.gz backup format* (compressed);
- Rainbow UI enabler menu;
- customized GUI;
- and some other;
- some of the features are inspired from [ProjectOpenCannibal Recovery](https://github.com/ProjectOpenCannibal/android_bootable_recovery);

____

To build, do it like with any other CWM recovery, but it is important to set up a flag in BoardConfig for your device screen res width `DEVICE_SCREEN_WIDTH := 540` and use yours - 540 here is just for example. It will work without it, but I made different size images for better fit on screen. The possible width to set are: 240, 320, 480, 540, 600, 720, 768, 800, 1080. If your screen width is not in the list, choose one close to it.
Also you can choose a font that will look better on your screen, since now with xiaolu's courtesy we have more: `BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_17x33.h\"`.
____

For MTK phones, there is need of another flag in BoardConfig `BOARD_HAS_MTK := true` to activate MTK specific functions. 
____

You don't need to change anything to add your credits in build, because the code will add it from your computer with shell, like in building kernels: it will print on screen "**Compiled by yourusername@yourhostname on: date**".

Enjoy!
