@echo off
Title Changing Boot time using bat 
Color A
:: Checks Administrative mode
net session 2>&1
if %errorlevel% neq 0(
  echo execute the script in Administrator Rights
  pause
  exit /b )
:: Disable driver signature enforcement
echo Disabling driver signature enforcement...
bcdedit /set nointegritychecks on

:: Check if the task was completed successfully
if %errorlevel%==0 (
    echo Driver signature enforcement disabled successfully.
) else (
    echo Failed to disable driver signature enforcement.
)
Color E
pause
exit