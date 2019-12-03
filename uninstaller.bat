@echo off
set installerTitle=BBD Installer for Discord Portable (Unofficial) - Uninstall
echo.
echo %installerTitle%
echo.
set /p installLocation="Discord Portable Versioned App Folder Location(e.g. C:\portapps\discord-portable\app\app-0.0.305): "
cls
echo.
echo %installerTitle%
echo.
echo Uninjecting from Discord Portable...
if exist %installLocation%\resources\app\betterdiscord\index.js (
    goto :uninstallPart2
) else (
    goto :uninstallNotNeeded
)

:uninstallPart2
rmdir /s /q %installLocation%\resources\app
ren %installLocation%\resources\app_orig app
cls
echo.
echo %installerTitle%
echo.
echo Finished uninstalling, press any key to exit...
pause >nul
exit /B

:uninstallNotNeeded
cls
echo.
echo %installerTitle%
echo.
echo BBD appears to not be installed, press any key to exit...
pause >nul