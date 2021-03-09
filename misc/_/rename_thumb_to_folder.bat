@echo off & setlocal
title %~dp0
color b
echo -------------------------------------------------------------------------
echo  push key to start
echo -------------------------------------------------------------------------
echo.
pause > nul

For /R %%a in (thumb.jpg) DO IF EXIST "%%a" REN "%%a" "folder.jpg"
echo.
pause > nul
