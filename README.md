# Flashforge for Cura

This is a complete functional Cura profile for FlashForge Creator Pro. Tested with Cura 4.4.1. Single extrusion so far, but will add dual later.
Inspired by and based on the following work:

1. Toylerrr's Cura profile on GitHub: https://github.com/Toylerrr/Flashforge-for-Cura
I forked the repo, but ended up reimplementing all profiles more or less completely from scratch. But it was a good starting point.

2. Lyl3's profile on Thingiverse: https://www.thingiverse.com/thing:3569113
I took his start/stop GCode scripts, which are in turn based on Simplify3D start/stop scripts, so I had a high confidence that they would work well. I cleaned them up a bit and made a single but important modification that allows to use the same script for either left or right extruder, so you don't have to change it when you change the active extruder. However it doesn't work with dual extrusion yet, that will come later.

3. Simplify3D parameters.

4. Hardware parameters found in GPX tool source code.

It is pretty much plug-n-play. The major improvement compared to all other profiles mentioned above, is that it is based on the actual hardware parameters for FFCP, so it won't crash the bed to the floor (because the Z-limit direction is set correctly), for example. It will also use relative extrusion mode - this is what Simplify3D and FlashPrint use.

## Installation

### Before you begin

Please download ZIP file and unzip it somewhere on your hard drive. Alternatively you can use `git clone` to checkout the repository.

There are two ways to install the application - into user folder (preferred) and application package itself. Installing into user folder will allow it to survive application updates, but if you have multiple user accounts on your Mac or PC, each user will need to install the profile separately as it will not be visible to all users. In this case you can use alternative method to install the profile globally, however it will not survive application update as application folder will be rewritten during update.

### MacOS 

#### Into user library (preferred for single-user installations)

This is a preferred way as it should survive application updates.
The easiest way is to use the supplied script. The script will attempt to install profiles into the latest version of Cura installed on your computer.

1. Open Terminal and navigate to unzipped directory. The easiest way to do it is to type `cd` and drag the unzipped folder into that Terminal window and then press Enter.
2. Launch install script by executing `bash ./install.sh`
3. Monitor output for any errors. If no errors are displayed, you are almost done - please refer to post-install section below.

Alternatively, you can do it manually:

1. Open Cura library folder located at `/Users/your_username/Library/Application\ Support/cura/4.4/` (for 4.4.x, for later versions it will be different). 
2. Then go to Contents/Resources/resources and copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. You may need to create `meshes` folder first.
3. Perform steps from post-install section below.


#### Into Application (if you have multiple user accounts on your Mac that will need to use this printer)

1. Open your Applications folder in Finder and right-click on Ultimaker Cura. Click on Show Package Contents.
2. Then go to Contents/Resources/resources and copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura.
3. Perform steps from post-install section below.

## Windows

### Into local AppData (preferred for single-user installations)

This is a preferred way as it should survive application updates.

1. Open Cura library folder located at `C:\Users\your_username\AppData\Roaming\cura\4.4` (for 4.4.x, for later versions it will be different). 
2. Then go to Contents\Resources\resources and copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. You may need to create `meshes` folder first.
3. Perform steps from post-install section below.

### Into application folder (if you have multiple user accounts on your PC that will need to use this printer)

1. Open Cura application resources folder located at `C:\Program Files\Ultimaker Cura 4.4\resources` (for 4.4.x, for later versions it will be different). 
2. Then copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. 
3. Perform steps from post-install section below.


## Post-install

1. Launch Cura and click on Add Printer in the printer selection dropdown. You should be able to see FlashForge Creator Pro in the list.
2. Install X3GWriter plugin from the Marketplace menu

Remember, that that extruder 0 is right and extruder 1 is left. The easiest way to disable/enable specific extruder is to go to Settings menu and do it from there as they are named properly in it. *_It doesn't work with dual extrusion yet!!!!_*

Please open an issue if you find a bug or something is not working.


