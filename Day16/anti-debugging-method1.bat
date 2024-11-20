@echo off
Title Anti-debugging method 1

:: Method 1: Check for the presence of common debugging tools

tasklist | findstr /i "windbg ollydbg procexp procmon" >nul
if %errorlevel% equ 0 (
    Color 4
    echo Debugging methods detected
	exit /b
)
echo  No debugging methods detected 
pause