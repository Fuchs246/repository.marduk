@echo off
TITLE Put files into folders using Filename
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Move files from folders to base dir
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL
for /r %%a in (*.*) do (
move "%%a" ""
)
ECHO.
ECHO Push key to exit
ECHO.
PAUSE > NUL