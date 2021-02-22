@echo off
TITLE NFO creator Musicvideos
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Create NFO for Musicvideos, all existing will be overwritten
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL

setlocal
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
echo 		%artist% - %title%.nfo
echo 		Is Created
echo.
for /r %%a in (*.mkv *.avi *.mp4) do (
(
echo ^<?xml version="1.0" encoding="UTF-8" standalone="yes"?^>
echo ^<^!-- end test https://kodi.wiki/view/NFO_files/Music_videos --^>
echo ^<musicvideo^>
echo ^	^<title^>%title%^</title^>
echo ^	^<rating^>^0.000000^</rating^>
echo ^	^<userrating^>^8^</userrating^>
echo ^	^<epbookmark^>^0.000000^</epbookmark^>
echo ^	^<year^>^</year^>
echo ^	^<track^>^-1^</track^>
echo ^	^<album^>^</album^>
echo ^	^<artist^>%artist%^</artist^>
echo ^	^<genre^>^</genre^> 
echo ^	^<outline^>^</outline^>
echo ^	^<plot^>^</plot^>
echo ^	^<tagline^>^</tagline^>
echo ^	^<thumb^>^</thumb^>
echo ^	^<status^>^</status^>
echo ^	^<studio^>^</studio^>
echo ^	^<art^>
for /r %%a in (*-thumb.jpg) do echo ^		^<thumb^>%~dp0%artist% - %title%\%artist% - %title%-thumb.jpg^</thumb^>
for /r %%a in (*-fanart.jpg) do echo ^		^<fanart^>%~dp0%artist% - %title%\%artist% - %title%^-fanart.jpg^</fanart^>
for /r %%a in (*-poster.jpg) do echo ^		^<poster^>%~dp0%artist% - %title%\%artist% - %title%^-poster.jpg^</poster^>
for /r %%a in (*-artistthumb.jpg) do echo ^		^<artistthumb^>%~dp0%artist% - %title%\%artist% - %title%^-poster.jpg^</artistthumb^>
for /r %%a in (*-banner.jpg) do echo ^		^<banner^>%~dp0%artist% - %title%\%artist% - %title%^-banner.jpg^</banner^>
for /r %%a in (*-clearlogo.png) do echo ^		^<clearlogo^>%~dp0%artist% - %title%\%artist% - %title%^-clearlogo.png^"</clearlogo^>
for /r %%a in (*-discart.jpg) do echo ^		^<discart^>%~dp0%artist% - %title%\%artist% - %title%^-discart.jpg^</discart^>
for /r %%a in (*-discart.png) do echo ^		^<discart^>%~dp0%artist% - %title%\%artist% - %title%^-discart.png^</discart^>
for /r %%a in (*-landscape.jpg) do echo ^		^<landscape^>%~dp0%artist% - %title%\%artist% - %title%^-landscape.jpg^</landscape^>
echo ^	^</art^>
echo ^</musicvideo^>
)>"%~dp0%artist% - %title%\%artist% - %title%.nfo"
)
goto :EOF