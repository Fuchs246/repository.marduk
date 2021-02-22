@echo off
TITLE Put files into folders using Filename
COLOR B
ECHO -------------------------------------------------------------------------
ECHO  Delete all unwanted Art and NFO MOVIE ONLY
ECHO  Push key to Start
ECHO -------------------------------------------------------------------------
ECHO.
PAUSE > NUL
ECHO.
ECHO Folders removed
ECHO.
for /d /r . %%d in (extrathumbs) do if exist "%%d" echo "%%d" is deleted
for /d /r . %%d in (extrafanart) do if exist "%%d" echo "%%d" is deleted
for /d /r . %%d in (extrathumbs) do if exist "%%d" rd /s /q "%%d"
for /d /r . %%d in (extrafanart) do if exist "%%d" rd /s /q "%%d"
ECHO.
ECHO Files
ECHO.
for /r %%a in (landscape.jpg fanart.jpg thumb.jpg poster.jpg clearart.png clearlogo.png discart.jpg discart.png *.nfo) do if exist "%%a" echo "%%a" is deleted
for /r %%a in (landscape.jpg fanart.jpg thumb.jpg poster.jpg clearart.png clearlogo.png discart.jpg discart.png *.nfo) do if exist "%%a" del "%%a"
ECHO.
ECHO remaining files
ECHO.
for /r %%a in (*.*) do if exist "%%a" echo %%a
PAUSE > NUL