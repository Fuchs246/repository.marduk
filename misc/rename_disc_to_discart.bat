@echo off & setlocal
title %~dp0
color b
echo -------------------------------------------------------------------------
echo  push key to start
echo -------------------------------------------------------------------------
echo.
pause > nul

For /R %%a in (disc.* medium.*) DO IF EXIST "%%a" REN "%%a" "discart.*"
echo.
pause > nul
