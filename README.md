# Canvas DS (Rocknix)

Canvas DS is a heavily optimized, minimalist, and functional modification of the Canvas theme designed specifically for unique dual-screen and wide-aspect hardware layouts (running a resolution of 1920x480). It provides clean grid based system and game selection with custom-fit styling.

This project is built using [**Canvas (ES Version)**](https://github.com/Siddy212/canvas-es) as a core framework, heavily adapted to natively support dual-screen aspect ratios inspired by structural layouts from the [**dii-ess-aye**](https://github.com/beebono/dii-ess-aye) theme.

### DISCLAIMER: This is an Anbernic RG-DS exclusive theme for ROCKNIX only.

# Known Issues (that won't be fixed)
1. Keyboard and horizontally longer popups are incorrectly sized.
2. Advanced Game Options is hidden.
  - Workaround by pressing your Advanced Game Options button twice.
3. Slider setting bars are way too long.

### Install
1. [Download](https://github.com/toniremi/canvas-ds/releases/download/1.0.1/canvas-ds.zip) or clone this repository. You can use the [release](https://github.com/toniremi/canvas-ds/releases) page to download the theme.
2. Copy the contents of this repository into your themes folder under a folder named `canvas-ds`
  - Either connect to your network share and put it in the `themes` folder
  - Or copy it to `/STORAGE/.config/emulationstation/themes/` directly
3. Copy both the `enable_theme_rgds.sh` and the `start_es_rgds.sh` scripts from the repository's `scripts` folder into your `roms/ports` folder
  - !!! NOTE: If you downloaded the theme as a zip, you may need to re-enable execution on the `enable_theme_*.sh` script either
              after extraction on your computer or on the device via ssh. Use `chmod +x enable_theme_*.sh` for either method.
4. After updating your gamelists, open your ports section on your device and
  - Either run the enable script every time you want to enable the theme
    - (You will have to manually change the theme setting when you want to switch back)
  - Or set the enable script to run at launch by opening the Advanced Game Options (remember you can access this by pressing X twice) and turning on that option
    - Optionally, set the enable script's metadata Hidden option if you don't want it to clutter the ports

#### For Users who previously installed the DII-ESS-AYE theme.

If you previously installed the [**dii-ess-aye**](https://github.com/beebono/dii-ess-aye) theme you still need to replace the `enable_theme_rgds.sh` and also copy the `start_es_rgds.sh` to the `/roms/ports` folder.

The `enable_theme_rgds.sh` from **dii-ess-aye** theme will also change your theme selection so you will have to swap themes everytime you start your device. I rewrote the `enable_theme_rgds.sh` to be theme agnostic. This is also why we need to copy the `start_es_rgds.sh` into the `/roms/ports` folder so we do not need to go and search it in dii-ess-eye or canvas-ds folders.

### Uninstall
1. If your enable script is set to auto start: Start Menu -> System Settings -> Frontend Developer Options -> Stop Running This Game At Startup
2. Switch your theme back to SYSTEM-THEME: Start Menu -> User Inferface Settings -> Theme Set
3. Reboot
4. If your enable and start scripts are hidden either manually delete the scripts completely from `/roms/ports`, or
  1. Go to Start Menu -> User Interface Settings -> Enable Show Hidden Files
  2. Go to your Ports section in EmulationStation and highlight the script
  3. Press X -> Edit This Game's Metadata -> Select the DELETE button at the bottom

### **Preview of some of the Variants, Font Sizes, and Color Schemes**

| Color  |             Variant              |                                                           Top View                                                            |                                                          Bottom View                                                           |
| :----: | :------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------: |
| Dark  |        System Grid & Art        | ![dark_top_systemview](https://github.com/toniremi/canvas-ds/blob/main/previews/dark_top_systemview.png?raw=true) | ![dark_bottom_systemview](https://github.com/toniremi/canvas-ds/blob/main/previews/dark_bottom_systemview.png?raw=true) |
| Dark  |        Game Grid & Metadata On        | ![dark_top_gameview](https://github.com/toniremi/canvas-ds/blob/main/previews/dark_top_gameview.png?raw=true) | ![dark_bottom_gameview](https://github.com/toniremi/canvas-ds/blob/main/previews/dark_bottom_gameview.png?raw=true) |
|  Neon  | System Grid & Icon | ![neon_top_systemview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/neon_top_systemview.png?raw=true) | ![neon_bottom_systemview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/neon_bottom_systemview.png?raw=true) |
| SNES |    System Grid & Icon    | ![sness_top_systemview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/sness_top_systemview.png?raw=true) | ![sness_bottom_systemview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/sness_bottom_systemview.png?raw=true) |
| Retro  |    Custom Grid 5X3 & Metadata Off    | ![retro_top_gameview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/retro_top_gameview.png?raw=true) | ![retro_bottom_gameview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/retro_bottom_gameview.png?raw=true) |
| Famicom  |    Detailed Game View & Metadata On    | ![famicom_top_detailedview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/famicom_top_detailedview.png?raw=true) | ![famicom_bottom_detailedview.png](https://github.com/toniremi/canvas-ds/blob/main/previews/famicom_bottom_detailedview.png?raw=true) |

# **Configuration Options**

- This theme has a simple set of options that can be changed directly from the UI Settings menu of EmulationStation.

## **Gamelist Style**

  - `Gamelist View Style` - sets the style of the gamelist View.

    - `Detailed` - A simple text list of games and metadata on the bottom.
    - `Grid` - A grid of boxart/video preview and minimal metadata below for games.

  - `Default Grid Style` - Sets the rows/columns of the grid views. The theme will scale optimally based on the `Automatic Grid Rows/Columns` below if left as `Automatic`.

  ## **Theme Options**

  - `System Grid Size` - sets the size of the `Grid` within the System View.

    - `Automatic` - Recommended sizing based on your aspect ratio.
    - `3x1, 3x2, 3x3, 4x2, 4x3, 4x4, 5x4` - Other available sizes.

  - `System Icon Style` - sets the style of the icons in the System View

    - `Art` - Box of iconic art for each system with Logo beneath.
    - `Icons` - Controller and Logo for each system.

  - `Theme Color Scheme` - There are 8 color schemes to choose from that each change the color palette and wallpaper of the theme across all views. Each wallpaper can easily be swapped out by the user for further customization. Alternate options are included within the theme as examples:

    - `Light` - A light grayscale color scheme.
    - `Dark` - A dark grayscale color scheme.
    - `Neon` - A retro neon color scheme.
    - `Pastel` - A light and bright color scheme.
    - `Sony` - A blue/white style using PSP colors.
    - `SNES` - A gray/purple style using Super Nintendo colors.
    - `Famicom` - A red/gold style using Nintendo Famicom colors.
    - `Retro` - A striped vintage color scheme.
    - `Custom` - Directs to the theme-customizations folder for your `Distribution`. Custom `colors.xml`, `Art` folders, `Icon` folders, and a `wallpaper` can be set.

  - `Theme Font Size` - enables you to change the size of the fonts displayed in the theme. It will also scale the size of the system carousel.

    - `Small` - good for display on tvs and large handheld screens at 6 inches or larger.
    - `Medium` - good for display on handheld screens at 3.5 inches or larger.
    - `Large` - good for display on small handheld screens at 3.5 inches or smaller.

  - `Metadata` - enables you to disable the game details and only display the image.

    - `On`
    - `Off`

  - `Metadata Rating/Playtime` - A toggle to either display the game's metacritic rating or your playtime.
    - `Rating`
    - `Playtime`

  ## **Gamelist Theme Options**

  - `Metadata Image Type` - enables you to change the image above the metadata.

    - `Image` - Show only the scraped game image.
    - `Boxart` - Show only the scraped game boxart.
    - `Miximage` - Compile a Miximage with boxart, marquee, and screenshot.

  - `Automatic Grid Size` - enables you to change the number of rows for the `Grid` view when `Default Grid Size` is set to `Automatic`. It will scale correctly to optimize screen space per system.

    - `Automatic` - Will select an optimized row choice for your aspect ratio.
    - `2 Rows`
    - `3 Rows`
    - `4 Rows`

 
    - `Automatic` - Will select an optimized column choice for your aspect ratio.
    - `2 Columns`
    - `3 Columns`
    - `4 Columns`

## **Theme Customizations**

This theme allows customizations to artwork without the need to edit the source XML. This follows the default Art-Book-Next customization directions for alignment.

You will need to add your theme customizations on to the next folder found at the root of this theme in `theme-customizations/`.

### System View Art

- Create the folder called `artwork` in the theme customization directory mentioned above.
- Create your custom artwork as a 1-1 aspect ratio square image.
- Export your final images as webp, pngs, or jpgs.
- They can be named:
  - ${system.theme}.webp
  - ${system.theme}.png
  - ${system.theme}.jpg
- The theme will look them them up in that order. If a given image is not found in your folder then the the images from the theme will be used as a fallback. This allows you to customize only the images you want and still have images displayed for all systems.
- ${system.theme}.webp should be named for the system you are looking to override. For example if you wanted to override the artwork for snes you would create an image called snes.webp in the artwork folder. Once your images are in place you turn on custom images by changing the `System Icon Style` setting to `Custom (Art)`.

### System View Icons

- Create the folder called `icons` in the theme customization directory chosen above.
- Create your custom icon following the other systems location and size.
- Export your final images as webp or pngs.
- They can be named:
  - ${system.theme}.webp
  - ${system.theme}.png
- The theme will look them them up in that order. If a given image is not found in your folder then the the images from the theme will be used as a fallback. This allows you to customize only the images you want and still have images displayed for all systems.
- ${system.theme}.webp should be named for the system you are looking to override. For example if you wanted to override the icons for snes you would create an image called snes.webp in the icons folder. Once your images are in place you turn on custom images by changing the `System Icon Style` setting to `Custom (Icons)`.

### Wallpapers and Color Schemes

- Locate the folder `wallpapers` within Emulation Stations' theme directory at: `canvas-ds/wallpapers`
- Inside are .webp images named after the color schemes.
- Save over any of these with your new wallpaper (or a new jpg image) to change that color scheme look.
- Alternate wallpapers are also stored in the "Alternate" folder as an example. **But this images have not been modified to look well on dual screen setup.**

- Alternatively, use the color scheme `Custom` to point to a .jpg or .webp file named `custom` within `theme-customizations\wallpapers`. The theme will default to `themes\canvas-ds\wallpapers\custom.webp` if no wallpaper is found.
- Choosing `Custom` also allows a new color scheme to be created within `theme-customizations\colors.xml`. If no file is present, it will default to the custom color scheme within `themes\canvas-ds\colors.xml` however this will be overriden if the theme is updated.

### Customization Examples
I have included 2 examples on how to customize the theme.

Check them out along with further explanation on how to customize the theme [here](https://github.com/toniremi/canvas-ds/blob/main/customization%20examples/README.md)

## **Acknowledgments**

**Code structure, file layouts, tips, and theme paths** were guided by the outlines from [Ant - ArtBookNext](https://github.com/anthonycaccese/art-book-next-es) as well as with the help and inspiration from [**dii-ess-aye**](https://github.com/beebono/dii-ess-aye) to achieve dual screen layout on RG-DS

**Artwork was designed and created by the following artists and credit is provided to them.**
- Most of the dual screen layout has been inspired by the [dii-ess-aye](https://github.com/beebono/dii-ess-aye) theme created by [beebono](https://github.com/beebono)
- [Zoidburg13](https://github.com/Zoidburg13) for their wonderful system icons.
- A lot of the original artwork and layouts were designed and created by [fagnerpc](https://github.com/fagnerpc)
- Light/Dark wallpaper by [Pretty In Pixel](https://prettyinpixel.wordpress.com/page/2/)
- Retro wallpaper by [Hadair Ahmad](https://www.vecteezy.com/members/aspctstyle)
- Sony wallpaper by [Winterbird](https://www.deviantart.com/winterbird/art/PSP-wallpaper-24161542)
- Pastel wallpaper by [simax-jr](https://www.reddit.com/r/dbrand/comments/ypa90k/palettes_design_as_wallpaper_at_4k_res_3840_x/)
- Donkey Kong Country 2 art for SNES: Created by [Renato Giacomo](https://www.artstation.com/renatogiacomini)
- Yoshi Mario Kart on Wii: Modifications made to art by [Yoshiyaki](https://www.deviantart.com/yoshiyaki) & [Renato Giacomo](https://www.artstation.com/renatogiacomini)
- Delfino Plaza wallpaper on Gamecube: Created by [Vincent Moubeche](https://www.artstation.com/artwork/Xn4Xo3)
- Mario on Gamecube: Created by [SonicJeremy](https://www.deviantart.com/sonicjeremy)
- Tyranitar for GBC Hacks: [Chris Silva](https://www.artstation.com/artwork/obBlyB)
- Wallpaper for Gameboy Hacks: [trollkarl3] (https://www.deviantart.com/trollkarl3/art/Realistic-Super-Mario-Bros-1-first-stage-Wallpaper-375538304)
- Haohmaru for ngp - [jlcryu](https://www.deviantart.com/jlcryu/art/Haohmaru-919703925)
- Glados for Steam - [EliteRobo](https://www.deviantart.com/eliterobo/art/Portal-SFM-Simple-GLaDOS-Render-794265716)
- ScummVM Classic - [mikimontllo](https://twitter.com/mikimontllo)
- System Icons (Dragon32, BBCMicro, etc) - [PangolinWrestler](https://github.com/PangolinWrestler)
- Other publicly available wallpapers or characters are credited to their original creators.

## **License**

Creative Commons CC-BY-NC-SA - https://creativecommons.org/licenses/by-nc-sa/2.0/
You are free to share and adapt this theme as long as you provide attribution back to me (and the above credits) as well share any updates you make under the same licence terms.
