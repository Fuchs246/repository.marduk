@echo off
TITLE NFO creator Musicvideos
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Create NFO for Musicvideos, all existing will be overwritten
ECHO  Be sure you dont use any special characters like ( , ) , & ....  !
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL

for /r %%A in (*.mkv *.avi *.mp4) do call :subroutine_createnfo "%%~nA"
ECHO.
ECHO 	Creatin is done
ECHO 	Scroll up to chcek for errors.   Push key to exit
ECHO 	Push key to exit
ECHO.
PAUSE > NUL
goto :EOF

:subroutine_createnfo
set "filename=%~1"
set "artist=%filename: - =" & set "title=%"
echo.
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%.nfo" echo 		%artist% - %title%.nfo ALREADY existed - go to next
IF NOT EXIST "%~dp0%artist% - %title%\%artist% - %title%.nfo" echo 		%artist% - %title%.nfo
IF NOT EXIST "%~dp0%artist% - %title%\%artist% - %title%.nfo" echo 		is created
echo.

IF NOT EXIST "%~dp0%artist% - %title%\%artist% - %title%.nfo" (
(
echo ^<?xml version="1.0" encoding="UTF-8" standalone="yes"?^>
echo ^<^!-- end test https://kodi.wiki/view/NFO_files/Music_videos --^>
echo ^<musicvideo^>
echo ^	^<title^>%title%^</title^>
echo ^	^<rating^>^8.000000^</rating^>
echo ^	^<userrating^>^8^</userrating^>
echo ^	^<year^>^</year^>
echo ^	^<track^>^-1^</track^>
echo ^	^<album^>^</album^>
echo ^	^<artist^>%artist%^</artist^>
echo ^	^<genre^>^</genre^> 
echo ^	^<plot^>^</plot^>
echo ^	^<status^>^</status^>
echo ^	^<studio^>^</studio^>
echo ^	^<art^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-thumb.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-thumb.jpg^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-landscape.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-landscape.jpg^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-fanart.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-fanart.jpg^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-poster.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-thumb.jpg^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-artistthumb.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-poster.jpg^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-banner.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-banner.jpg^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-clearlogo.png" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-clearlogo.png^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-discart.png" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-discart.png^</thumb^>
IF EXIST "%~dp0%artist% - %title%\%artist% - %title%-discart.jpg" echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-discart.jpg^</thumb^>
echo ^	^</art^>
echo ^</musicvideo^>
)>"%~dp0%artist% - %title%\%artist% - %title%.nfo"
)
goto :EOF
