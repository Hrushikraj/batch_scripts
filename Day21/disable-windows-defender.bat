@echo off

:: Check if script is running as administrator
net session >nul 2>&1 || (
  echo Please run this script as administrator.
  pause
  exit /b
)

:: Disable Windows Firewall
echo Disabling Windows Firewall...
netsh advfirewall set allprofiles state off

:: Notify user
echo Windows Firewall has been disabled.
pause

:: Re-enable Windows Firewall after 5 minutes
timeout /t 40
echo Re-enabling Windows Firewall...
netsh advfirewall set allprofiles state on
echo Windows Firewall has been re-enabled.
pause
