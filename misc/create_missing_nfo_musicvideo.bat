@echo off & setlocal
title %~dp0
color b
echo -------------------------------------------------------------------------
echo  create nfo for musicvideos if missing
echo  BETTER DO A SCRAPE AND EXPORT NFO BEFORE AFTER RUN THIS SCRIPT
echo  be sure you dont use any special characters like ^& in filename and foldername
rem cant use parentheses in code because parentheses in string will causing unwished behaviour, escapeing them in for nfo tags will write enclosing chars
rem i dont like ren before
echo  push key to start
echo -------------------------------------------------------------------------
echo.
pause > nul


for /r %%a in (*.mkv *.avi *.mp4) do call :subroutine_check "%%~na"
echo.
echo 	creatin is done
echo 	scroll up to chcek for errors.   push key to exit
echo 	push key to exit
echo.
pause > nul
goto :eof

:subroutine_check
set "filenamenoextension=%~1"
set "filepath=%~dp0%filenamenoextension%\%filenamenoextension%"
set "artist=%filenamenoextension: - =" & set "title=%"
REM set "artist=%unescapedartist: - =" & set "unescapedtitle=%"
REM set "artist="%unescapedartist:&=^&%"
REM set "title="%unescapedtitle:&=^&%"
echo.
rem goto :debug

if exist "%filepath%.nfo" echo %~1.nfo   already exist - check next
if exist "%filepath%.nfo" goto :eof
if not exist "%filepath%.nfo" echo %~1.nfo   is created now
if not exist "%filepath%.nfo" goto :createnfo

:createnfo
type nul >"%filepath%.nfo"
rem echo. >"%filepath%.nfo"
echo ^<?xml version="1.0" encoding="utf-8" standalone="yes"?^> > "%filepath%.nfo"
echo ^<musicvideo^>>> "%filepath%.nfo"
echo    ^<title^>%title%^</title^>>> "%filepath%.nfo"
echo    ^<rating^>^8.000000^</rating^>>> "%filepath%.nfo"
echo    ^<userrating^>^8^</userrating^>>> "%filepath%.nfo"
echo    ^<year^>^</year^>>> "%filepath%.nfo"
echo    ^<track^>^-1^</track^>>> "%filepath%.nfo"
echo    ^<album^>^</album^>>> "%filepath%.nfo"
echo    ^<artist^>%artist%^</artist^>>> "%filepath%.nfo"
echo    ^<genre^>^</genre^>>> "%filepath%.nfo"
echo    ^<plot^>^</plot^>>> "%filepath%.nfo"
echo    ^<status^>^</status^>>> "%filepath%.nfo"
echo    ^<studio^>^</studio^>>> "%filepath%.nfo"
echo    ^<art^>>> "%filepath%.nfo"
if exist "%filepath%-artistthumb.jpg" echo        ^<artistthumb^>%filepath%-artistthumb.jpg^</artistthumb^>>> "%filepath%.nfo"
if exist "%filepath%-thumb.jpg" echo        ^<thumb^>%filepath%-thumb.jpg^</thumb^>>> "%filepath%.nfo"
if exist "%filepath%-landscape.jpg" echo        ^<landscape^>%filepath%-landscape.jpg^</landscape^>>> "%filepath%.nfo"
if exist "%filepath%-fanart.jpg" echo        ^<fanart^>%filepath%-fanart.jpg^</fanart^>>> "%filepath%.nfo"
if exist "%filepath%-poster.jpg" echo        ^<poster^>%filepath%-poster.jpg^</poster^>>> "%filepath%.nfo"
if exist "%filepath%-banner.jpg" echo        ^<banner^>%filepath%-banner.jpg^</banner^>>> "%filepath%.nfo"
if exist "%filepath%-clearlogo.png" echo        ^<clearlogo^>%filepath%-clearlogo.png^</clearlogo^>>> "%filepath%.nfo"
if exist "%filepath%-discart.png" echo        ^<discart^>%filepath%-discart.png^</discart^>>> "%filepath%.nfo"
if exist "%filepath%-discart.jpg" echo        ^<discart^>%filepath%-discart.jpg^</discart^>>> "%filepath%.nfo"
echo    ^</art^>>> "%filepath%.nfo"
echo ^</musicvideo^>>> "%filepath%.nfo"
goto :eof

:debug
echo errorlevel %errorlevel%
echo root %~dp0
echo filenamenoextension %filenamenoextension%
echo artist %artist%
echo title %title%
echo filepath %filepath%
echo.