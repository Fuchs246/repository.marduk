@echo off
TITLE Put files into folders using Filename
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Put files into folders using Filename
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL

for /r %%a in (folder.jpg) if exist do (
rem del %%a
echo %%a
)
for /r %%b in ("folder (1).jpg") if exist do "%%b" (
rem ren "%%a"
echo %%b
)

ECHO.
ECHO Push key to exit
ECHO.
PAUSE > NUL