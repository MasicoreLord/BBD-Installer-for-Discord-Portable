@echo off
set installerTitle=BBD Installer for Discord Portable (Unofficial) - Update
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
echo Updating injection...
if exist %installLocation%\resources\app\betterdiscord\index.js (
    goto :updatePart2
) else (
    goto :notInstalled
)

:updatePart2
rmdir /s /q %installLocation%\resources\app
move .\temp\injection\BBD-Discord-Portable-Injector-master %installLocation%\resources\app
rmdir /s /q .\temp
mkdir temp
cls
echo.
echo %installerTitle%
echo.
echo Finished updating, press any key to exit...
pause >nul
exit /B

:notInstalled
cls
echo.
echo %installerTitle%
echo.
echo The injection appears to not already be there, run install.bat instead, press any key to exit...
pause >nul