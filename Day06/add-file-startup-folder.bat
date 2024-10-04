@echo off
Title Adding programs to start-up Folder 
Color A 
echo --- Script by Hrushik Raj S----
:: Shifts to Green Colour 
net session >nul 2>&1
if %errorlevel% neq 0 (
   echo "Please execute this script under administrator rights"
   pause
   exit /b
   )
:: Define the file or program to run automaticallly
set "fileToPersist=%ProgramFiles%\qBittorrent\qbittorrent.exe"

::C:\path\to\your\program.exe
:: Get the Startup folder path (for current user)
set "startupFolder=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Copy the program to the Startup folder
echo Creating persistence by adding to the Startup folder...
copy "%fileToPersist%" "%startupFolder%\"
echo Process completes in 
timeout /t 5 /nobreak
echo Click enter to check whether program is added to startup folder or not
pause
:: Check if the file was successfully copied
Color E
if exist "%startupFolder%\program.exe" (
    echo Persistence added successfully.
) else (
    echo Failed to add persistence.
)

pause
