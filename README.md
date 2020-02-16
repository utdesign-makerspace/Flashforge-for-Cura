# Flashforge for Cura

## Important - please read first!

_Feb 14, 2020_

This version supports both single and dual extrusion. Dual extrusion requires Cura 4.5 BETA or higher. It may work with 4.4.1 but there is a bug that may result in choosing incorrect tool for the skirt/brim/raft. It was fixed in Cura 4.5-beta.

Tested on FlashForge Creator Pro on left, right and both extruders, and users also report compatibility with Creator X.

PLEASE UPDATE TO THE NEWEST VERSION! 

If using only SINGLE nozzle, please DISABLE UNUSED EXTRUDER before slicing to avoid heating up both nozzles and printing brim/skirt/raft with a different extruder!
When using dual extrusion it's recommended to use ooze shield. Also use prime tower for the cleanest result, but it will significantly increase printing time and result in many tool changes due to dual extrusion implementation in Cura.

Remember - Extruder 1 is RIGHT, Extruder 2 is LEFT! 

Please, carefully read both Installation and Post Install sections below.

## Changelog

v0.6 (Feb 16, 2020) - Implemented extruder offset to aid Cura in path computation (wipe the inactive nozzle, etc), tweaked ooze shield parameters and tool change position.

v0.5 (Feb 14, 2020) - DUAL extrusion support!

v0.4 (Feb 1, 2020) - Linux support in install script (thanks @toluschr)

v0.3 (Jan 25, 2020) - Decreased first layer speed to 15 mm/s for even better adhesion. You can override that in settings.

v0.2 (Jan 24, 2020) - Fixed bug with incorrect init/wipe code for right extruder. Slowed down default initial layer speed to 20 mm/s for better adhesion.

v0.1 (Jan 22, 2020) - Initial commit

## Description

This is a complete functional Cura profile for FlashForge Creator Pro. Tested with Cura 4.4.1 (single only) and 4.5-beta (single and dual).

Inspired by and based on the following work:

1. Toylerrr's Cura profile on GitHub: https://github.com/Toylerrr/Flashforge-for-Cura

I forked the repo, but ended up reimplementing all profiles more or less completely from scratch. But it was a good starting point.

2. Lyl3's profile on Thingiverse: https://www.thingiverse.com/thing:3569113

I took his start/stop GCode scripts, which are in turn based on Simplify3D start/stop scripts, so I had a high confidence that they would work well. I cleaned them up a bit and made a single but important modification that allows to use the same script for either left or right extruder (or both at the same time), so you don't have to change it when you change the active extruder or use dual extrusion. 

3. Simplify3D parameters.

4. Hardware parameters found in GPX tool source code.

It is pretty much plug-n-play. The major improvement compared to all other profiles mentioned above, is that it is based on the actual hardware parameters for FFCP, so it won't crash the bed to the floor (because the Z-limit direction is set correctly), for example. It will also use relative extrusion mode - this is what Simplify3D and FlashPrint use.

## Installation

### Before you begin

Please download ZIP file and unzip it somewhere on your hard drive. Alternatively you can use `git clone` to checkout the repository.

There are two ways to install the application - into user folder (preferred) and application package itself. Installing into user folder will allow it to survive application updates, but if you have multiple user accounts on your Mac or PC, each user will need to install the profile separately as it will not be visible to all users. In this case you can use alternative method to install the profile globally, however it will not survive application update as application folder will be rewritten during update.

### MacOS 

#### Note for MacOS users

If you save the sliced model as x3g (default for FFCP) and you get an empty file, follow the steps described in this issue to install the required libraries: https://github.com/haskell/haskell-platform/issues/231#issuecomment-177530716

Or alternatively forget about X3G and use gcode with Octoprint!

#### Into user library (preferred for single-user installations)

This is a preferred way as it should survive application updates.
The easiest way is to use the supplied script. The script will attempt to install profiles into the latest version of Cura installed on your computer.

1. Open Terminal and navigate to unzipped directory. The easiest way to do it is to type `cd` and drag the unzipped folder into that Terminal window and then press Enter.
2. Launch install script by executing `bash ./install.sh`
3. Monitor output for any errors. If no errors are displayed, you are almost done - please refer to post-install section below.

Alternatively, you can do it manually:

1. Open Cura library folder located at `/Users/your_username/Library/Application\ Support/cura/4.4/` (for 4.4.x, for later versions it will be different). 
2. Copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. You may need to create `meshes` folder first.
3. Perform steps from post-install section below.

#### Into Application (if you have multiple user accounts on your Mac that will need to use this printer)

1. Open your Applications folder in Finder and right-click on Ultimaker Cura. Click on Show Package Contents.
2. Then go to Contents/Resources/resources and copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura.
3. Perform steps from post-install section below.

### Linux

Change to unzipped folder and run `bash ./install.sh`

### Windows

#### Into local AppData (preferred for single-user installations)

This is a preferred way as it should survive application updates.

1. Open Cura library folder located at `C:\Users\your_username\AppData\Roaming\cura\4.4` (for 4.4.x, for later versions it will be different). 
2. Copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. You may need to create `meshes` folder first.
3. Perform steps from post-install section below.

#### Into application folder (if you have multiple user accounts on your PC that will need to use this printer)

1. Open Cura application resources folder located at `C:\Program Files\Ultimaker Cura 4.4\resources` (for 4.4.x, for later versions it will be different). 
2. Then copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. 
3. Perform steps from post-install section below.


## Post-install

1. Launch Cura and click on Add Printer in the printer selection dropdown. You should be able to see FlashForge Creator Pro in the list.
2. Install X3GWriter plugin from the Marketplace menu

BEFORE SLICING, DISABLE UNUSED EXTRUDER if using just one nozzle!

Remember, that that extruder 1 is right and extruder 2 is left. The easiest way to disable/enable specific extruder is to go to Settings menu and do it from there as they are named properly in it. 

Please open an issue if you find a bug or something is not working.


