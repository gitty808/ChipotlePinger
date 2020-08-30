REM Chipotle Pinger by Jakee#9898 - Do not Attempt to Copy, or resell this scirpt.

@echo off
color 06
title Chipotle Pinger v2 by Jakee#9898
echo off & cls
type dontDelete.txt
ping localhost -n 2 >nul
:start
cls
color 0F
echo Menu:
echo Type any IP Address to Start Pinging it
echo Type 'v2' for changelog
echo Type 'buy' for info on how to buy the full version of this pinger
echo Type 'pf' for Pricing and Features of the full version
echo. 
set /p IP=
if '%IP%'=='v2' goto changelog
if '%IP%'=='buy' goto buy
if '%IP%'=='pf' goto pf
cls
color C
echo Pinging %Ip%
echo +------------------------------------+
:rainbow_ping
PING -t %IP%
IF ERRORLEVEL 1 echo [%IP%] Has Been Downed, Enojy Your Food!
color C
ping -t 2 0 1 127.0.0.1 >nul
color 06
GoTo rainbow_ping
:changelog
cls && color 0F && type dontTouch.txt && ping localhost -n 3 >nul
cls
color 0F
echo -Added Change Log
echo -Bug Fixes
echo.
pause
goTo start
:buy
cls && color 0A && echo How to Buy:
echo DM Jakee#9898 on Discord
echo Autobuy Coming Soon
echo.
echo Payment Methods:
echo Cashapp
echo Bitcoin
echo Paypal
echo.
pause
goTo start
:pf
cls && color 0C && echo Price:
echo $4.99 USD
echo.
echo Features:
echo Chipotle Simulator
echo MANY more graphics
echo 10x Faster Pinging
echo Custimizable Colors
echo and more
echo.
pause
goTo start
