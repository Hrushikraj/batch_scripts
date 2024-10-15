@echo off
Title enable boot debugging using bat
Color A
:: Checks Administrative mode
net session 2>&1
if %errorlevel% neq 0(
  echo execute the script in Administrator Rights
  pause
  exit /b )
:: Enable boot debugging
echo Enabling boot debugging...
bcdedit /debug on

:: Check if the task was completed successfully
if %errorlevel%==0 (
    echo Boot debugging enabled successfully.
) else (
    echo Failed to enable boot debugging.
)
pause
exit