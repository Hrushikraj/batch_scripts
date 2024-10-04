@echo off
Title Adding perseistence file to startup manualy
Color A 
echo --- Script by Hrushik Raj S----
:: Check for Administrator rights
net session >nul 2>&1
if  %errorlevel% neq 0 (
 echo Execute the script in Administrator Mode 
 pause
 exit  /b )

:: Define the program path to be persisted
set "fileToPersist=C:\path\to\your\program.exe"
set "registryKey=HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set "registryName=ProgramName"

:: Add the program to the registry for user-level persistence
echo Creating persistence by adding to the registry...
reg add "%registryKey%" /v "%registryName%" /t REG_SZ /d "%fileToPersist%" /f
timeout /t 5 /nobreak
Color E
:: Check if the registry entry was successfully added
reg query "%registryKey%" /v "%registryName%" >nul 2>&1
if %errorlevel%==0 (
    echo Persistence software is added to the registry successfully.
) else (
    echo Failed to add persistence to the registry.
)

pause
exit 
