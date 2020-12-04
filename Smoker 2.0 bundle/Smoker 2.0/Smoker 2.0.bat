echo off
mode con cols=65 lines=32
setlocal enabledelayedexpansion
color 0a
title Login Program
 
:start1
cls
echo Input a number and press enter...
echo.
echo 1) Login
echo 2) Create New Account
set /p loginx1=">> "
if not %loginx1% leq 2 goto start1
if %loginx1% equ 1 goto login
echo What do you want your username to be?
set /p username1=">>> "
set v1f=0
 
:findspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" equ " " (
echo.
echo.
echo Sorry, no spaces allowed in your username...
pause >nul
goto start1
)
if NOT "!Letter%v1f%!" equ "" (
set /a v1f=%v1f%+1
goto findspaces
)
echo What do you want your password to be?
set /p password1=">>> "
goto save
 
:login
cls
set /p name1=Username:
if not exist "%name1%.bat" (
echo Invalid Username...
pause >nul
goto start1
)
set /p pass1=Password:
call %name1%.bat
if not %password1% equ %pass1% (
echo Invalid Password
pause >nul
goto start1
)
goto menu
 
:save
(
echo set username1=%username1%
echo set password1=%password1%
)>%username1%.bat
goto start1
 
:menu
echo Logged in!
pause >nul
 
title ::SMOKER 2.0::
echo off & cls
color 0a
echo __________ }}
echo __________ }}}
echo ________ {{{{{{
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO
echo ______ OOOOOOO______}       
echo ______ OOOOOOO_____{{{
echo ______ OOOOOOO_____(..)
echo ______ OOOOOOO_____%
echo ______ OOOOOOO____%
echo ______ OOOOOOO___%
echo ____ OOOOOOOOOO%
echo ___ OOOOOOOOOOOO
echo __ OOOOOOOOOOOO O
echo _ OOOOOOOOOOOOOOO
echo _ OOOOOOOOOOOOOOO
echo __ OOOOOOOOOOOOOO
echo ___ OOOOOOOOOOOO
echo ____ OOOOOOOOOO


echo ================================
echo YOUR GETTING BAKED BY SMOKER2.0
echo ================================
set /p IP=ENTER IP FOR BAKING::
:top
PING -n 1 %IP% | FIND "TTL="
title ::Made By Sorez:: ~Pinging:%IP%~
IF ERRORLEVEL 1 (SET in=0c & echo Slammed By Smoker 2.0.)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top