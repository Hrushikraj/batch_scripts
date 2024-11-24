@echo off

:: Hide all command outputs
cls
echo Running in the background...

:: Redirect outputs to a null device to hide execution
start /b "" cmd.exe /c "ping 127.0.0.1 -n 5 >nul && echo Task completed >nul"

:: Perform hidden tasks (example: modifying a file silently)
attrib +h +s "C:\path\to\file.txt" >nul 2>&1

:: Example of creating a hidden process
start /min "" cmd.exe /c "tasklist >nul 2>&1"

:: Wait for tasks to finish
timeout /t 5 >nul

echo Operations completed.
exit
