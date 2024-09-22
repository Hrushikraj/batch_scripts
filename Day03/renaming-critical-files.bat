@echo off
Title Renaming Critical Files 
Color E
echo ==============================================
echo File Obfuscation Script: Renaming Critical Files
echo Script by hrushikrajs
echo ==============================================
Color A
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit /b)
::To Change to the directory where critical files are located (eg: System32)
cd %SystemRoot%\System32

:: Check if the critical file exists & rename it to the obsfucated
if exist notepad.exe (
    echo Renaming notepad.exe to notepad_obfuscated.exe
    ren notepad.exe notepad_obfuscated.exe
) else (
    echo notepad.exe not found or already renamed!
)
pause
:: Rename it back to avoid issues
if exist notepad_obfuscated.exe (
    echo Renaming notepad_obfuscated.exe back to notepad.exe
    ren notepad_obfuscated.exe notepad.exe
)

echo ==============================================
echo File Obfuscation Completed
echo ==============================================
pause
exit
