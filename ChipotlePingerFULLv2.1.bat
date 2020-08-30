REM Chipotle Pinger by Jakee#9898 

@echo off
color 06
title Chipotle Pinger v2.1 by Jakee#9898
echo off & cls
type dontOpen.txt
ping localhost -n 3 >nul
:start
cls
color 06
set /p FOOD=Bowl, Burrito, or Taco (To Skip Type skip, For ChangeLog type v2.1):
if '%FOOD%'=='skip' goto pinger
if '%FOOD%'=='v2.1' goto changelog
cls
color F
echo Adding Rice to %FOOD%....
echo.
echo Press any key to add rice to your %FOOD%
pause >nul
color D
cls
echo Adding Beans to %FOOD%....
echo.
echo Press any key to add beans to your %FOOD%
pause >nul
color 06
cls
echo Adding Meat to %FOOD%....
echo.
echo Press any key to add meat to your %FOOD%
pause >nul
cls
color A
echo done :)
color A
echo.
:pinger
cls
set /p IP=IP To Ping:
cls
color C
color F
echo To go to advanced options press 1 and hit enter, otherwise press enter.
set /p opt=
if '%opt%'=='1' goto adv
if '%opt%'=='' goto noadv
:adv
color 0C
echo Welcome skids
ping localhost -n 2 >nul
echo Sending you to adv pinger....
ping localhost -n 3 >nul
cls
goto standping
echo.
echo For standard pinging, press 1. For pinging with custom message press 2
:noadv
cls
color F0
echo Loading...
ping localhost -n 2 >nul
color 0F
cls
echo What color would you like to ping with? (Case Sensitive)
set /p Color=Brown, Red, Rainbow, or Chipotle (More Colors Coming in v3):
if '%Color%'=='Chipotle' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto chipotle_ping
if '%Color%'=='Red' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto red_ping
if '%Color%'=='Brown' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto brown_ping
if '%Color%'=='Rainbow' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto rainbow_ping
echo.
echo Invaild, try again.
ping localhost -n 2 >nul
cls
goto pinger
:chipotle_ping
PING  -n 1 %IP% | FIND "ms" > nul
set ms=%ms%
IF ERRORLEVEL 1 goto offline_chip
color C
echo Sending Chipotle to %IP%... (Online)
ping -t 2 0 1 127.0.0.1 >nul
echo Sending Chipotle to %IP%... (Online)
color 06
GoTo chipotle_ping
:red_ping
PING  -n 1 %IP% | FIND "TTL=" > nul
IF ERRORLEVEL 1 goto offline_red
color C
echo Sending Chipotle to %IP%... (Online)
ping -t 2 0 1 127.0.0.1 >nul
GoTo red_ping
:brown_ping
PING  -n 1 %IP% | FIND "TLL=" > nul
IF ERRORLEVEL 1 goto offline_brown
color 06
echo Sending Chipotle to %IP%... (Online)
ping -t 2 0 1 127.0.0.1 >nul
GoTo brown_ping
:rainbow_ping
PING  -n 1 %IP% | FIND "TTL=" > nul
IF ERRORLEVEL 1 goto offline_rainbow
set /a num=(%Random%%%9)+1
color %num%
echo Sending Chipotle to %IP%... (Online)
ping -t 2 0 1 127.0.0.1 >nul
GoTo rainbow_ping
:changelog
cls && color 0F && type dontTouch.txt && ping localhost -n 3 >nul
cls
color 0F
echo -Added Custom Message When IP is Offline and Online
echo -Bug Fixes
echo More to come Soon!
echo.
pause
goTo start
:standping
echo What color would you like to ping with? (Case Sensitive)
set /p Color=Brown, Red, Rainbow, or Chipotle (More Colors Coming in v3):
if '%Color%'=='Chipotle' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto 2chipotle_ping
if '%Color%'=='Red' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto 2red_ping
if '%Color%'=='Brown' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto 2brown_ping
if '%Color%'=='Rainbow' cls && color 06 && type dontDelete.txt && ping localhost -n 1 >nul && goto 2rainbow_ping
echo.
echo Invaild, try again.
ping localhost -n 2 >nul
cls
goto pinger
:2chipotle_ping
PING  -n 1 %IP% | FIND "ms"
set ms=%ms%
IF ERRORLEVEL 1 goto 2offline_chip
color C
ping -t 2 0 1 127.0.0.1 >nul
color 06
GoTo 2chipotle_ping
:2red_ping
PING  -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 goto 2offline_red
color C
ping -t 2 0 1 127.0.0.1 >nul
GoTo 2red_ping
:2brown_ping
PING  -n 1 %IP% | FIND "TLL="
IF ERRORLEVEL 1 goto 2offline_brown
color 06
ping -t 2 0 1 127.0.0.1 >nul
GoTo 2brown_ping
:2rainbow_ping
PING  -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 goto 2offline_rainbow
set /a num=(%Random%%%9)+1
color %num%
ping -t 2 0 1 127.0.0.1 >nul
GoTo 2rainbow_ping
:offline_chip
color F6
echo Chipotle has been delivered to %IP% (Offline)
goto chipotle_ping
:offline_red
color FC
echo Chipotle has been delivered to %IP% (Offline)
goto red_ping
:offline_brown
color F6
echo Chipotle has been delivered to %IP% (Offline)
goto brown_ping
:offline_rainbow
color F5
echo Chipotle has been delivered to %IP% (Offline)
goto rainbow_ping

:2offline_chip
color F6
echo Chipotle has been delivered to %IP% (Offline)
goto 2chipotle_ping
:2offline_red
color FC
echo Chipotle has been delivered to %IP% (Offline)
goto 2red_ping
:2offline_brown
color F6
echo Chipotle has been delivered to %IP% (Offline)
goto 2brown_ping
:2offline_rainbow
color F5
echo Chipotle has been delivered to %IP% (Offline)
goto 2rainbow_ping
