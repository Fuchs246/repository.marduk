@echo off
for %%a in (*.zip) do if not exist %%a.md5 md5.exe -n -l %%a >> %%a.md5