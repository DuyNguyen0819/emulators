@shift /0
@echo off
cd /d %~dp0
SETLOCAL EnableDelayedExpansion
title DUYNGUYEN0819
mode 100, 20
chcp 65001

::set vars
set LINK=https://github.com/DuyNguyen0819/emulators/releases/download/emulators/abcd
set LD4=LDPlayer.Lite_v4.0.83_NewBack_DuyNguyen0819.7z

set SMGG=SmartGaGa.Lite_NewBack_DuyNguyen0819.7z

set B5N32=BlueStacks.Lite_v5.9.0.1061_NewBack_DuyNguyen0819.7z
set B5N64=BlueStacks.Lite_N64_v5.9.0.1061_NewBack_DuyNguyen0819.7z
set B5P64=BlueStacks.Lite_P64_v5.9.0.1061_NewBack_DuyNguyen0819.7z

set M5N32=MSI.Lite_v5.9.3006315_NewBack_DuyNguyen0819.7z
set M5N64=MSI.Lite_N64_v5.9.300.6315_NewBack_DuyNguyen0819.7z
set M5P64=MSI.Lite_P64_v5.9.3006315_NewBack_DuyNguyen0819.7z

set LM7=LEmu.Lite_v7.5.5_NewBack_DuyNguyen0819.7z
set ME4=MEmu.Lite_v7.3.2_Android4_NewBack_DuyNguyen0819.7z
set ME5=MEmu.Lite_v7.1.2_Android5_NewBack_DuyNguyen0819.7z
set ME7=MEmu.Lite_v7.3.2_Android7_NewBack_DuyNguyen0819.7z


:home
color 0F
cls
echo          Hello %username%
echo.
echo.                          Nguyen Nhat Tan Duy
echo.
echo Emulators made by duynguyen
echo       Vui long chon gia lap ban muon cai dat!
echo.
echo      0  LDPlayer Lite_v4.0.83_NewBack_DuyNguyen0819 ( 1 Versions )
echo      1  SmartGaGa Lite_NewBack_DuyNguyen0819 ( 1 Versions )
echo      2  BlueStacks Lite_v5.9.0.1061_NewBack_DuyNguyen0819 ( Multi Versions N32 - N64 - P64 )
echo      3  MSI Lite_v5.9.300.6315_NewBack_DuyNguyen0819 ( Multi Versions N32 - N64 - P64 )
echo      4  LEmu Lite_v7.5.5_NewBack_DuyNguyen0819 ( Same VM as MEmu ) ( 1 Versions )
echo      5  MEmu Lite ( Multi Versions 4 - 7 )
SET /P Choose=»  
IF %Choose%=='' GOTO pass-rq

:pass-rq
echo.
echo type the password down here!
Set /a _rand=(%RANDOM%*900000000/8)+1
echo          %_rand%
echo.
echo Neu co "-" thi ghi ca - vo nhe!
SET /P pass=»»
IF not %pass%==%_rand% GOTO ERROR01
goto install



:install
cls
color 02
if %Choose%==0 set LINK=%LINK:abcd=!LD4!%
if %Choose%==1 set LINK=%LINK:abcd=!SMGG!%
if %Choose%==4 set LINK=%LINK:abcd=!LM7!%
if %Choose%==2 goto 2
if %Choose%==3 goto 3
if %Choose%==5 goto 5

echo.
echo Please wait for a few minutes!
timeout 06
cd "C:/Users/%username%/Desktop"
wget %LINK%
goto success

::BlueStacks

:2
cls
echo          Hello %username%
echo.
echo.                          Nguyen Nhat Tan Duy
echo.
echo Emulators made by duynguyen
echo       Vui long chon phien ban BlueStacks ban muon cai dat! 
echo.
echo     ( 1a )  BlueStacks Lite_v5.9.0.1061_NewBack_DuyNguyen0819 ( Android7-N32 )
echo     ( 2a )  BlueStacks Lite_N64_v5.9.0.1061_NewBack_DuyNguyen0819 ( Android7-N64 )
echo     ( 3a )  BlueStacks Lite_P64_v5.9.0.1061_NewBack_DuyNguyen0819 ( Android9-P64 )
echo.
SET /P ChooseBS=»  
IF %ChooseBS%=='' GOTO installBS

:installBS
cls
color 02
if %ChooseBS%==1a set LINK=%LINK:abcd=!B5N32!%
if %ChooseBS%==2a set LINK=%LINK:abcd=!B5N64!%
if %ChooseBS%==3a set LINK=%LINK:abcd=!B5P64!%
echo.
echo Please wait for a few minutes!
timeout 06
cd "C:/Users/%username%/Desktop"
wget %LINK%
goto success


::MSI

:3
cls
echo          Hello %username%
echo.
echo.                          Nguyen Nhat Tan Duy
echo.
echo Emulators made by duynguyen
echo       Vui long chon phien ban BlueStacks ban muon cai dat! 
echo.
echo     ( 1b )  BlueStacks Lite_v5.9.0.1061_NewBack_DuyNguyen0819 ( Android7-N32 )
echo     ( 2b )  BlueStacks Lite_N64_v5.9.0.1061_NewBack_DuyNguyen0819 ( Android7-N64 )
echo     ( 3b )  BlueStacks Lite_P64_v5.9.0.1061_NewBack_DuyNguyen0819 ( Android9-P64 )
echo.
SET /P ChooseMS=»  
IF %ChooseMS%=='' GOTO installMS

:installMS
cls
color 02
if %ChooseBS%==1b set LINK=%LINK:abcd=!M5N32!%
if %ChooseBS%==2b set LINK=%LINK:abcd=!M5N64!%
if %ChooseBS%==3b set LINK=%LINK:abcd=!M5P64!%
echo.
echo Please wait for a few minutes!
timeout 06
cd "C:/Users/%username%/Desktop"
wget %LINK%
goto success


::MEmu

:5
cls
echo          Hello %username%
echo.
echo.                          Nguyen Nhat Tan Duy
echo.
echo Emulators made by duynguyen
echo       Vui long chon phien ban MEmu ban muon cai dat! 
echo.
echo     ( 1c )  MEmu Lite_v7.3.2_Android4_NewBack_DuyNguyen0819
echo     ( 2c )  MEmu Lite_v7.1.2_Android5_NewBack_DuyNguyen0819
echo     ( 3c )  MEmu Lite_v7.3.2_Android7_NewBack_DuyNguyen0819
echo.
SET /P ChooseME=»  
IF %ChooseME%=='' GOTO installME

:installME
color 02
cls
if %ChooseME%==1c set LINK=%LINK:abcd=!ME4!%
if %ChooseME%==2c set LINK=%LINK:abcd=!ME5!%
if %ChooseME%==3c set LINK=%LINK:abcd=!ME7!%
echo.
echo Please wait for a few minutes!
timeout 04
cd "C:/Users/%username%/Desktop"
wget %LINK%
goto success

:success
cls
msg %username% Dowload thanh cong!
goto home


:ERROR01
cls
echo.
echo       Hi %username%
echo.
echo  Something went wrong!
echo   Try again!
timeout 06
goto home
