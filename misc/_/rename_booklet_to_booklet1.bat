@echo off & setlocal
title %~dp0
color b
echo -------------------------------------------------------------------------
echo  push key to start
echo -------------------------------------------------------------------------
echo.
pause > nul

For /R %%a in (booklet.jpg) DO IF EXIST "%%a" REN "%%a" "booklet ^(.jpg"
echo.
pause > nul
