# RetroArch DFOXpro's proposal

This project intent to improve the RetroArch experience in the OpenAndroid RP2 device. Note if you don't want to configure anything please use RetroidOS alternative.

## Improvements

* Enable run DC games
* Enable run N64 games
* Enable dynamic backgrounds
* Enable menu background music
* Use latest 1.9 RetroArch
* Fix GPSP playlist loading
* House keeping media storage
* Enable NG playlist (FBNeo)
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
2. It remove/replace/rename/move a bunch of folders/files from both storages.
3. For DC in RA joystic input does not emulate dpad (see GBA remap notes)

## HOW TO INSTALL
0. Make backups of SDCard and internal storage. With adb is easy as:

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
4. In the sdcard create the Bios folder, you can fill the folder with this [recomended bios files](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/external/Bios/PUT_BIOS_FILE_HERE.txt)

Now you can launch retroarch and configure your favorites consoles/cores.

5. Optionally you can configure your retroachivements account.

I present you a couple of recomendations for a few tested consoles/cores.

### Console/Core specifics

#### GBA

The fastest emulator for this handheld is gpsp but sadly is not suported by retroArch 1.6+. So you have 2 options: Using GPSP or Using mGBA.

In any case is also recomended to save your roms on gba non compresed format, this will skip decompresion in Retroarch~gpsp/temp folder

##### A) Using GPSP

Note this is a preinstalled app in OpenAndroid **this is not the normal retroArch**,  it's basically RetroArch 1.5.x.

1. Paste and replace with proposal [gpsp main settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/Android/data/com.gpsp/files/retroarch.cfg) your internal storage `/storage/sdcard0/Android/data/com.gpsp/`

Notes:

* With this new settings games saves are now srm (libretro standar) making easy to switch from gpsp to mgba on the fly.
* gpsp do no use bios file, so, some games will not start

##### B) Using Retroarch + mGBA

1. In retroarch Install core mGBA.
2. add `gba_bios.bin` bios file in your SD Bios folder.
3. Paste proposal [mgba settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/RetroArch/config/mGBA/mGBA.opt) to your internal storage `/storage/sdcard0/RetroArch/config/mGBA/`.
4. If you disable joystic `translate axis for direction` Paste the [remaps settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/RetroArch/config/remaps/mGBA/mGBA.rmp) to your internal storage `/storage/sdcard0/RetroArch/config/remaps/mGBA/`.

#### PCX

1. In retroarch Install core `PCSX ReARMed`.
2. add all the `scph*.bin` bios files in your SD Bios folder ([see list here](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/external/Bios/PUT_BIOS_FILE_HERE.txt)).
3. Paste proposal [pcsx settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/RetroArch/config/PCSX-ReARMed/PCSX-ReARMed.opt) to your internal storage `/storage/sdcard0/RetroArch/config/PCSX-ReARMed/`.

Notes:
· Is highlly recomended to use [chd](https://retropie.org.uk/docs/CHD-files/) roms to prevent errors with `Show bios boot logo` and non curated roms.
· Also take a look to [multidisk m3u playlist](https://docs.libretro.com/library/pcsx_rearmed/#multiple-disk-games).
· Also not so recomended, but use pbp roms to reduce file list with heavy multidisk games.
· Finally note both m3u and pbp files should be manually scaned with the extention equal to `m3u` or `pbp` and posibly you should Finetuning the playlist and thumbnails of this entries.

#### N64

1. In retroarch Install core `Mupen64Plus-Next` and/or `Mupen64Plus-Next GLES2`.
2. Paste proposal [mupen64 settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/RetroArch/config/Mupen64Plus-Next/Mupen64Plus-Next.opt) to your internal storage `/storage/sdcard0/RetroArch/config/Mupen64Plus-Next/`.

Some games may require custom core properties like Banjo-Kazooie.

#### NG

1. In retroarch Install core `FinalBurn Neo`.
2. add all the bios files in your SD Bios/fbneo folder ([see list here](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/external/Bios/PUT_BIOS_FILE_HERE.txt)).
3. Paste proposal [fbneo settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/RetroArch/config/FinalBurn%20Neo/FinalBurn%20Neo.opt) to your internal storage `/storage/sdcard0/RetroArch/config/FinalBurn Neo/`.
4. When searching for roms you can simply scan directory and some of the NeoGeo roms will be in FBNeo playlist. I recomend a manual file scan with `System Name` as `<Custom>` and `Custom System Name` equal to `SNK - Neo Geo`. or manually (via ADB pull push recomended) edit the json file `/storage/sdcard0/RetroArch/playlists/SNK - Neo Geo.lpl`

#### DC

1. Launch the app `GamePad Test` (with mouse mode) go to left menu > Settings and uncheck `translate axis for direction`.
2. In retroarch Install core `Flycast`.
3. add `dc_boot.bin` `dc_flash.bin` bios files in your SD `Bios/dc` folder ([see list here](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/external/Bios/PUT_BIOS_FILE_HERE.txt)).
4. Paste proposal [flycast settings](https://github.com/DFOXpro/rp2-fs/blob/retroarch-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/RetroArch/config/Flycast/Flycast.opt) to your internal storage `/storage/sdcard0/RetroArch/config/Flycast/`.

Notes:
· Unchecking `translate axis for direction` will disable the joystick for all non directional analog consoles like nes, snes, gba and other. So check remaping the joystick in those consoles also.
· Is highlly recomended to use [chd](https://retropie.org.uk/docs/CHD-files/) roms to skip the gdi files list per disk.
· Also take a look to [multidisk m3u playlist](https://docs.libretro.com/library/pcsx_rearmed/#multiple-disk-games), note this m3u files should be manually scaned with the extention equal to `m3u` and posibly you should Finetuning the playlist and thumbnails of this entries.

## Hotkeys

* Launch quick menu from game: `Start+Select`
* Retroarch screenshot: `Select+dpad-left`
* Retroarch fps: `Select+dpad-up`
* Retroarch mute: `Select+dpad-down`

## Original discussion sources

* Gameboy Advance https://discordapp.com/channels/741895796315914271/742403520908623923/757031779176546334
* Dreamcast https://discordapp.com/channels/741895796315914271/742403520908623923/757752325891817533
* NeoGeo https://discordapp.com/channels/741895796315914271/742403626634575903/759098024777089035