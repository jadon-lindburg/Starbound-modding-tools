-----------
|  ABOUT  |
-----------
Version: 1.1.0
Last updated: 2020-06-14

pack[-and-install]-starbound-mod.cmd automates the process of packing a Starbound mod for use in-game.
It copies all files except for those in the pack-starbound-mod.ignore file to a temporary folder and creates a .pak file with asset_packer.exe, which is included with Starbound's game files.


-----------
|  SETUP  |
-----------
1.	Copy pack-starbound-mod.cmd, pack-and-install-starbound-mod.cmd, pack-starbound-mod.ignore, and pack-starbound-mod.installpath to the folder that your mod folder is in.
		For example, if your mod is in 'MyStarboundMods\ModName', place the files into 'MyStarboundMods'.
	
2.	Open pack-starbound-mod.installpath (right click and select Edit).
	
3.	Navigate to your Starbound install folder.
		If you own the game on Steam, this will typically be 'C:\Program Files (x86)\Steam\steamapps\common\Starbound'.
		Note that even if there is a '\Starbound' folder there, the game files might be in a different place.

4.	Copy the path into pack-starbound-mod.installpath, then save and close the file.
		Click in the navigation bar in Windows Explorer to easily find the path.
		Filepaths with spaces in them are typically surrounded by quotes ("") to prevent potential problems when programs read them. If your install path contains spaces,
		DO NOT surround it with quotes, otherwise pack[-and-install]-starbound-mod.cmd will not work; The tool automatically surrounds the install path with quotes when it runs.

5.	Put any filenames you do not want included in the .pak file into pack-starbound-mod.ignore (right click and select Edit).
		If you want pack-starbound-mod.cmd to ignore any file with a certain extension, you can do this by adding '.[extension]\' to pack-starbound-mod.ignore.
		Note that this is not a perfect solution and may cause files to be ignored that you do not want to be.
		For example, adding '.cs\' to pack-starbound-mod.ignore would cause files named 'File.css' or 'File.cs.txt' to be ignored as well as ones with the extension '.cs'.
		Use this shortcut at your own risk. If files are missing from in-game after running pack[-and-install]-starbound-mod.cmd and you used this shortcut, check for file names that might be accidentally getting ignored.
		If this is the case, unfortunately the fix is to add every file with the extension individually.

6.	Repeat step 5 as needed.

-----------
|   USE   |
-----------
To use pack-and-install-starbound-mod.cmd, just drag your mod folder onto it. As long as you have set everything up correctly, your mod will be packed directly into your 'Starbound\mods' folder for testing and into a folder named 'packed' in your 'MyStarboundMods' folder for easy distribution.
For example, if your source files are in 'MyStarboundMods\ModName', pack-and-install-starbound-mod.cmd will save ModName.pak to both '[installpath]\mods' and 'MyStarboundMods\packed'.

If you do not want a mod to be automatically added to your game files, use pack-starbound-mod.cmd instead. This is the exact same tool, except that it does not add the .pak file into your '[installpath]/mods' folder.

-----------
|  NOTES  |
-----------
If you do not want the temporary folder to stick around after the tool runs, edit pack[-and-install]-starbound-mod.cmd and copy this line:
	(everything between the square brackets) [RD /s /q "packed\%foldername%\"] right after the last line in the file ([pause]).
This will cause pack[-and-install]-starbound-mod.cmd to automatically delete the temporary folder before closing.
The folder will still exist until the command window is closed in case you wish to inspect the contents before it gets deleted.

If you do not want the command window to stay open, edit pack[-and-install]-starbound-mod.cmd and remove the last line ([pause]).
This will cause pack[-and-install]-starbound-mod.cmd to automatically close on completion.

For convenience, you can put shortcuts to '[installpath]' and 'starbound.exe' to your 'MyStarboundMods' folder in order to navigate to the game files and launch the game more easily.