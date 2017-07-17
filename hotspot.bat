@echo off
title Hotspot Creater
color 1f
::#######################################################
:strt
cls
echo.
echo.
echo ----------------------!!!   HOTSPOT CREATER by GAurav   !!!----------------------
echo.
echo.
echo 1. Create Hotspot
echo 2. Start Hotspot
echo 3. Stop Hotspot
echo 5. Exit
echo.
set /p ch=Select Choice: 

if %ch%==1 goto create
if %ch%==2 goto startHotspot
if %ch%==3 goto stopHotspot
if %ch%==5 goto exit
goto strt


::**********************************************************
:create
cls
echo.
echo.
echo ----------------------!!!   HOTSPOT CREATER by GAurav   !!!----------------------
echo.
echo.
echo ---------------------------!!!   Create Hospot   !!!---------------------------
echo.
set /p hName=Enter Hotspot Name: 
echo.
set /p hPass=Enter Hotspot Password: 
echo.
echo.
netsh wlan set hostednetwork mode=allow ssid=%hName% key=%hPass%
echo.
echo Hotspot Created
pause>nul
goto strt


::**********************************************************
:startHotspot
echo.
netsh wlan start hostednetwork
pause>nul
goto strt


::**********************************************************
:stopHotspot
echo.
netsh wlan stop hostednetwork
pause>nul
goto strt

::*********************************************************
:exit
exit