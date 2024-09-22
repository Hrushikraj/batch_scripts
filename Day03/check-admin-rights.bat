@echo off
Title Checks whether it has Administrator rights
:: Check for Administrator rights
Color A
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit )
else (goto works)

:works
cls
echo This prompt is with Administrator rights
pause
Color 7
exit /b