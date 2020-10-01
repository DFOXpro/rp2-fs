# Pegasus frontend DFOXpro's proposal

This project intent to improve the Pegasus FE experience in the OpenAndroid RP2 device.

Note the roms housekeeping is a little more convoluted compared  to retroArch

## Improvements

* Show more rom media related
	* title screen
	* physic media (cd/cartridge)
	* video/game cover (compared to switch OS)
* Main colour is customizable
* Pegasus config files are centralized in pegasus folder
* A11y QoL fixes:
	* Show all otb input hints of the theme
	* Biger and more contrasted text
	* Video auto play is delayed to 3 seconds

## Guidelines

* Same as DFpRetroArch Guidelines.

## How is done

1. Use a fork of grid theme.
2. Define "twice" games directory file.
3. Via a config file is posible to change main colour of the theme
4. It uses retroArch emulation configs, see [my guide to retroArch](https://github.com/DFOXpro/rp2-fs/tree/pegasus-dfoxpro-proposal/DFOXpro-docs)

## HOW TO INSTALL

1. Install stable pegasus frontend [from here](https://pegasus-frontend.org/#downloads).
2. Replace pegasus-frontend folder with proposal [pegasus settings folder](https://github.com/DFOXpro/rp2-fs/tree/pegasus-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/pegasus-frontend) your internal storage `/storage/sdcard0/pegasus-frontend`
3. Setup metadata roms info with skraper as [this guide](https://basvroegop.nl/pegasus), in the end you should have a metadata.txt and media folder structure [like this](https://github.com/DFOXpro/rp2-fs/blob/pegasus-dfoxpro-proposal/firmware/preinstall/external/Roms/GBA/) for each console.

  3,1. Note the theme presented here support the skraper medias:
  * image > box2dfront
  * image > suport (cartridge/cd)
  * image > screenshot
  * image > screenshot-title
  * image > (normalized)video
  * image > wheel (logo)

4. Optionally you can link retroArch thumbnails with skraper/pegasus media; runing those [shell scripts](https://github.com/DFOXpro/rp2-fs/blob/pegasus-dfoxpro-proposal/firmware/preinstall/external/Thumbnails/Nintendo%20-%20Nintendo%2064/makeLinksToSkraperMediaFolders.sh) in the intended folder.

## About the theme
This guide use's a [fork of default pegasus-grid theme](https://github.com/DFOXpro/rp2-pegasus-theme-grid).

You can edit the main colour [here](https://github.com/DFOXpro/rp2-fs/blob/pegasus-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/pegasus-frontend/theme_settings/rp2-pegasus-theme-grid.json) `internal/pegasus-frontend/theme_settings/rp2-pegasus-theme-grid.json`.

"main_colour" can be:

* INDIGO
* YELLOW
* PINK
* Or any `#RRGGBB` Colour

This colour will bee processed by luminicence to be a light or dark color scheme.


## Notes

* all console launch metadata are in `internal/pegasus-frontend/customActions` [folder](https://github.com/DFOXpro/rp2-fs/tree/pegasus-dfoxpro-proposal/firmware/preinstall/internal/data/media/0/pegasus-frontend/customActions)
* It's hightly recomended to use pegasus as Android main laucher (it will save you batery and time in the long run)

* Thanks to @Urya @ Discord for [this extensive guide](https://basvroegop.nl/pegasus)
