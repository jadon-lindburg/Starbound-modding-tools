@echo off
REM version: 1.1.0

for %%f in (%1) do set foldername=%%~nxf
set /p installpath=<pack-starbound-mod.installpath
echo Copying %foldername% mod files for packing...
RD /s /q "packed\%foldername%\"
xcopy /r /d /i /s /y /exclude:pack-starbound-mod.ignore "%foldername%" "packed\%foldername%\"
echo Packing and installing %foldername%...
%installpath%\win32\asset_packer.exe "packed\%foldername%" "packed\%foldername%.pak"
%installpath%\win32\asset_packer.exe "packed\%foldername%" "%installpath%\mods\%foldername%.pak"
pause