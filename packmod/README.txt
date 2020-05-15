-----------
|  ABOUT  |
-----------
packmod.cmd automates the process of packing a Starbound mod for use in-game.
It copies all files except for those in the .ignore file to a temporary folder and creates a .pak file with asset_packer.exe, which is included with Starbound's game files.

Last updated: 2020-05-15

-----------
|  SETUP  |
-----------
1.	Copy packmod.cmd, .ignore, and .installpath to the folder that your mod folder is in.
		For example, if your mod is in MyStarboundMods\ModName, place the files into MyStarboundMods.
	
2.	Open .installpath (right click and select Edit).
	
3.	Navigate to your Starbound install folder.
		If you own the game on Steam, this will typically be C:\Program Files (x86)\Steam\steamapps\common\Starbound.
		Note that even if there is a \Starbound folder there, the game files might be in a different place.

4.	Copy the path into .installpath, then save and close the file.
		Click in the navigation bar in Windows Explorer to easily find the path.
		Filepaths with spaces in them typically are surrounded by quotes ("") to prevent potential problems when programs read them. If your install path contains spaces,
		DO NOT surround it with quotes, otherwise packmod.cmd will not work, because packmod.cmd surrounds the install path with quotes itself when it runs.

5.	Put any filenames you do not want included in the .pak file into .ignore (right click and select Edit).

[
	If you want packmod.cmd to ignore any file with a certain extension, you can do this by adding .[extension]\ to .ignore.
	Note that this is not a perfect solution and may cause files to be ignored that you do not want to be. For example, adding .cs\ to .ignore would cause files named File.css or
	File.cs.txt to be ignored as well as ones with the extension .cs. Use this shortcut at your own risk. If files are missing from in-game after running packmod.cmd and you used
	this shortcut, check for file names that might be accidentally getting ignored. If this is the case, unfortunately the fix is to add every file with the extension individually.
]

6.	Repeat step 5 as needed.

-----------
|   USE   |
-----------
To use packmod.cmd, just drag your mod folder onto it. As long as you have set everything up correctly, your mod will be packed directly into your Starbound\mods folder for testing
and into a folder named 'packed' in the same folder as packmod.cmd for easy distribution.
For example, if your source files are in MyStarboundMods\ModName, packmod.cmd will save ModName.pak to both [installpath]\mods and MyStarboundMods\packed.

-----------
|  NOTES  |
-----------
If you do not want the temporary folder to stick around, edit packmod.cmd and copy this line (everything between the square brackets): [RD /s /q "packed\%foldername%\"] after the last line [pause].
This will cause packmod.cmd to automatically delete the temporary folder before closing.
The folder will still exist until the command window is closed in case you wish to inspect the contents before it gets deleted.

If you do not want the command window to stay open, edit packmod.cmd and remove the last line [pause].
This will cause packmod.cmd to automatically close on completion.