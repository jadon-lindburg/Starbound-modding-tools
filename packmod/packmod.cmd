@echo off
for %%f in (%1) do set foldername=%%~nxf
echo %foldername%
set /p installpath=<.installpath
echo Copying %foldername% mod files for packing...
RD /s /q "packed\%foldername%\"
xcopy /r /d /i /s /y /exclude:.ignore "%foldername%" "packed\%foldername%\"
echo Packing %foldername%...
%installpath%\win32\asset_packer.exe "packed\%foldername%" "packed\%foldername%.pak"
%installpath%\win32\asset_packer.exe "packed\%foldername%" "%installpath%\mods\%foldername%.pak"
pause