@echo off
Title Disabling Windows Firewall
Color A
net session >nul 2>&1
if %errorlevel% neq 0 (
   echo Run the script with Administrator privileges.
   pause
   exit /b
)

:: Disable Windows Firewall
netsh advfirewall set allprofiles state off
echo Windows Firewall Disabled.

:check
echo Check whether the firewall is disabled or not.
set /p input=Enter 1 to end the script, otherwise enter 0 to re-enable the firewall: 

if "%input%"=="1" goto stop
if "%input%"=="0" goto backup

echo Invalid input, please enter 1 or 0.
goto check

:backup
netsh advfirewall set allprofiles state on
echo Windows Firewall Enabled.
pause
exit

:stop
echo Exiting script...
pause
exit
