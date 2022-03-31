@echo off
title Gameloop Android 7.1 Installer [Credits : Mohd Yesus Gautama]
start "" "AppMarket\GameDownload.exe" -component -noupdate -from appmark -pkg null -vdiver aow_71 -downspeedlimit 0 -no_install_vdi -no_install_vdi44 -no_install_vbox -install_aow_rootfs -aeparam -engine aow -aeparamend
echo [-] Downloading and installing Gameloop 7.1, please wait...
echo [-] Mengunduh dan memasang Gameloop 7.1, mohon tunggu...

:check
ping 127.0.0.1 -n 6 > nul
tasklist /fi "ImageName eq GameDownload.exe" /fo csv 2>NUL | find /I "GameDownload.exe">NUL
if "%ERRORLEVEL%"=="0" goto check_folder

:check_folder
IF NOT EXIST "AOW_Rootfs_100\TInst.exe" goto check

:start
ping 127.0.0.1 -n 10 > nul
echo [-] Tekan spasi untuk memulai emulator....
pause
start "" "UI\androidemulatoren.exe" -engine aow -vm 100