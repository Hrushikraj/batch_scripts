@echo off
Title Enable ControlPanel 
Color A 
:: Checks the Administrator Rights
net session >nul 2>&1
if %errorlevel% neq 0(
  echo execute the script in Administrator Rights
  pause
  exit /b )

:: Enable Control Panel by removing the policy
echo Enabling Control Panel...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /f

:: Check if Control Panel is enabled successfully
if %errorlevel%==0 (
    echo Control Panel enabled successfully.
) else (
    echo Failed to enable Control Panel.
)

pause
