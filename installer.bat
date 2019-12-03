@echo off
set installerTitle=BBD Installer for Discord Portable (Unofficial)
echo.
echo %installerTitle%
echo.
set /p installLocation="Discord Portable Versioned App Folder Location(e.g. C:\portapps\discord-portable\app\app-0.0.305): "
cls
echo.
echo %installerTitle%
echo.
.\curl\bin\curl.exe -L https://github.com/MasicoreLord/BBD-Discord-Portable-Injector/archive/master.zip -o ./temp/injection.zip
.\7z-extra\7za.exe x .\temp\injection.zip -o.\temp\injection
echo Injecting into Discord Portable...
if exist %installLocation%\resources\app\betterdiscord\index.js (
    goto :alreadyInstalled
) else (
    goto :installPart2
)

:installPart2
ren %installLocation%\resources\app app_orig
move .\temp\injection\BBD-Discord-Portable-Injector-master %installLocation%\resources\app
rmdir /s /q .\temp\
mkdir temp
cls
echo.
echo %installerTitle%
echo.
echo Finished installing, press any key to exit...
pause >nul
exit /B

:alreadyInstalled
cls
echo.
echo %installerTitle%
echo.
echo BBD appears to be installed already, run update.bat instead, to udpdate the injection, press any key to exit...
pause >nul