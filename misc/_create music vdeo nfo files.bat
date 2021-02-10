@echo off
REM Windows Title
TITLE NFO creator Musicvideos
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Create NFO for Musicvideos, all existing will be overwritten
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL

for /r %%a in (*.mkv *.avi *.mp4) do (
(
echo ^<?xml version="1.0" encoding="UTF-8" standalone="yes"?^>
echo ^<musicvideo^>
for %%b in ("%%~na") do echo ^	^<title^>%%~b^</title^>
echo ^	^<^!-- start test set attributes --^>
for %%b in ("%%~na") do echo ^	^<path^>%~dp0^</path^>
for %%b in ("%%~na") do echo ^	^<name^>%%~na^</name^>
for %%b in ("%%~na") do echo ^	^<filenameandpath^>%%~a^</filenameandpath^>

echo ^	^<^!-- end test https://kodi.wiki/view/NFO_files/Music_videos --^>
REM test end
echo ^	^<rating^>^0.000000^</rating^>
echo ^	^<userrating^>^8^</userrating^>
echo ^	^<epbookmark^>^0.000000^</epbookmark^>
echo ^	^<year^>^</year^>
echo ^	^<track^>^-1^</track^>
echo ^	^<album^>^</album^>
echo ^	^<artist^>^</artist^>
echo ^	^<genre^>^</genre^> 
echo ^	^<outline^>^</outline^>
echo ^	^<plot^>^</plot^>
echo ^	^<tagline^>^</tagline^>
echo ^	^<thumb^>^</thumb^>
echo ^	^<status^>^</status^>
echo ^	^<studio^>^</studio^>
echo ^	^<art^>
echo ^		^<fanart^>%~dp0^%%~na^-fanart.jpg^</fanart^>
echo ^		^<poster^>%~dp0^%%~na^-poster.jpg^</poster^>
echo ^		^<artistthumb^>%~dp0^%%~na^-artistthumb.jpg^</artistthumb^>
echo ^		^<banner^>%~dp0^%%~na^-banner.jpg^</banner^>
echo ^		^<clearlogo^>%~dp0^%%~na^-clearlogo.png^</clearlogo^>
echo ^		^<discart^>%~dp0^%%~na^-discart.png^</discart^>
echo ^		^<landscape^>%~dp0^%%~na^-landscape.jpg^</landscape^>
echo ^	^</art^>
echo ^</musicvideo^>
)>"%%~dpna.nfo"
)
ECHO.
ECHO Creatin is done
ECHO Push key to exit
ECHO.
PAUSE > NUL