@echo off & setlocal
title %~dp0
color b
echo -------------------------------------------------------------------------
echo  push key to start
echo -------------------------------------------------------------------------
echo.
pause > nul

For /R %%a in (logo.png) DO IF EXIST "%%a" (
echo %%a
REN "%%a" "clearlogo.png"
)
echo.
pause > nul
