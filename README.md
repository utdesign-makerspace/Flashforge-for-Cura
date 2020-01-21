# Flashforge for Cura

This is a complete functional Cura profile for FlashForge Creator Pro. Tested with Cura 4.4.1. Single extrusion so far, but will add dual later.
Inspired and based on the following work:

1. Toylerrr's Cura profile on GitHub: https://github.com/Toylerrr/Flashforge-for-Cura
I forked the repo, but ended up reimplementing all profiles more or less completely from scratch. But it was a good starting point.

2. Lyl3's profile on Thingiverse: https://www.thingiverse.com/thing:3569113
I took his start/stop GCode scripts, which are in turn based on Simplify3D start/stop scripts, so I had a high confidence that they would work well. I cleaned them up a bit and made a single but important modification that allows to use the same script for either left or right extruder, so you don't have to change it when you change the active extruder. However it doesn't work with dual extrusion yet, that will come later.

3. Simplify3D parameters.

4. Hardware parameters found in Sailfish and GPX tool source code.

It is pretty much plug-n-play. The major improvement compared to all other profiles mentioned above, is that it is based on the actual hardware parameters for FFCP, so it won't crash the bed to the floor (because the Z-limit direction is set correctly), for example. It will also use relative extrusion mode - this is what Simplify3D and FlashPrint use.

## Installation

### Windows


### MacOS

1. Open your Applications folder in Finder and right-click on Ultimaker Cura. Click on Show Package Contents.
2. Then go to Contents/Resources/resources and copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura.
3. Launch Cura and click on Add Printer in the printer selection dropdown. You should be able to see FlashForge Creator Pro in the list.

Alternatively, you can drop the files into resources folder located in ~/Library/Application Support/cura/4.4 - the official documentation is not clear about which one is preferred. In theory, this one should survive application updates.

### Notes

Remember, that that extruder 0 is right and extruder 1 is left. The easiest way to disable/enable specific extruder is to go to Settings menu and do it from there as they are named properly in it. *_It doesn't work with dual extrusion yet!!!!_*


![Cura 4.4.1](https://i.imgur.com/Jsk94T4.png)



