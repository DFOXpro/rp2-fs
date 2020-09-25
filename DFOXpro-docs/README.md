# RetroArch DFOXpro's proposal

This project intent to improve the RetroArch experience in the OpenAndroid RP2 device.

## Improvements

* Enable run DC games
* Enable run N64 games
* Enable dynamic backgrounds
* Enable menu background music
* Use latest 1.9 RetroArch
* Fix GPSP playlist loading
* House keeping media storage
* Enable NG playlist (mame2003)
* Finetuning GBA games (mGBA)
* Finetuning PSX games (PCSX ReARMed)
* Finetuning XMB UI

## Guidelines

* Separate config files from binary and user files(saves/screenshots) where:
	* SD card priorize binary and user files
	* Internal card priorize all kind of config files
* Easy to maintain ordering, exploding and version control most config files:
	* Config files are alphabetically sorted
	* Core config files are one per core
	* Capitalized & plural names are user or static-binary folders (like Roms, Screenshots...)
* Enable all posible features
	* Achivements, menu audio, hotkeys are ready to go

## How is done

1. It uses latest RetroArch version (1.9.0 now).
2. It remove/replace/rename/move a bunch of folders/files from bot storages.
3. For DC in RA joystic input does not emulate dpad (see GBA remap notes)

## HOW TO INSTALL
0. Make backups of SDCard and internal storage
	With adb is easy as:

```
#!/bin/bash
mkdir storagesBackup; cd storagesBackup
# backup internal storage, "fast"
adb pull /storage/sdcard0 .
# backup SD, really slow
adb pull /storage/sdcard1 .
```

1. Uninstall current RetroArch and install latest from [retroarch official repo in fdroid](https://wiki.retroidhandhelds.com/index.php?title=Getting_Started#Android_google_account_or_anonym.2Fnon_google_settings), [latest apk here](https://fdroid.libretro.com/repo/RetroArch_GIT.apk)
2. Paste and replace with proposal [retroarch main settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/Android/data/com.retroarch/files/retroarch.cfg) your internal storage `/storage/sdcard0/Android/data/com.retroarch/`
3. Move your `screenshots`, `saves`, `thumbnails` from `/storage/sdcard0/RetroArch/` to the [sdcard (see example, maintain capitalized)](https://github.com/DFOXpro/rp2-fs/tree/retroarch-dfoxpro-proposal/firmware/preinstall/external)