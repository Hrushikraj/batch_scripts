@echo off
Title Changing Boot time using bat 
Color A
:: Checks Administrative mode
net session 2>&1
if %errorlevel% neq 0(
  echo execute the script in Administrator Rights
  pause
  exit /b )
:: Change boot timeout to 10 seconds
echo Modifying boot menu timeout to 10 seconds...
bcdedit /timeout 10

:: Check if the task was completed successfully
if %errorlevel%==0 (
    echo Boot menu timeout changed successfully.
) else (
    echo Failed to change boot menu timeout.
)
Color E
pause
exit 