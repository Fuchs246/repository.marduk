@echo off
TITLE Put files into folders using Filename
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Put files into folders using Filename
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL
for %%a in (*.mkv *.avi *.mp4 *.mpg *.nfo) do (
md "%%~na" 2>nul
move "%%a" "%%~na"
)
cd ..
del %%~na
pause