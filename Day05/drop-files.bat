@echo off
Title Drop and executes the file
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit /b
)
Color A
echo Dropping and Executing a File via Batch Script
echo By hrushik 
echo -------------//-----//-------------------------

:: Define where the file will be dropped (in this case, C:\Temp)
set dropLocation=%USERPROFILE%\Downloads\droper

:: Check if the folder exists, if not, create it
if not exist %dropLocation% (
    echo Creating %dropLocation%...
    mkdir %dropLocation%
)

:: Drop a text file with some content
echo This is a dropped file > %dropLocation%\dropped_file.txt

:: Example of dropping an executable (here, copying calc.exe as a demo)
copy %SystemRoot%\System32\calc.exe %dropLocation%\dropped_calc.exe

:: Execute the dropped file (txt and exe)
start %dropLocation%\dropped_file.txt
start %dropLocation%\dropped_calc.exe

Color 7
echo Files Dropped and Executed Successfully!

pause
