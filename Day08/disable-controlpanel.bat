@echo off
Title Disable Control Panel 
Color E 
:: Checks Administrator rights
net session >nul 2>&1
if %errorlevel% neq 0 (
  echo Execute the script in Administrator mode
  pause 
  exit /b )
:: Disable Control Panel and PC Settings
echo Disabling Control Panel...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t REG_DWORD /d 1 /f

:: Check if Control Panel is disabled successfully
if %errorlevel%==0 (
    echo Control Panel disabled successfully. Congrats
) else (
    echo Failed to disable Control Panel.
	exit
)
echo click on enter 
pause
set /p input= Enter 1 if u need to renable otherwise enter 0
if %input% == 0 goto stop
else (goto renable)
:renable
:: script to enaable the controlpanel
CALL enable-controlpanel.bat
echo Now verify whether its enabled or not
pause 
exit

::Function for closing the prompt
:stop
echo Click to exit the script
pause
exit

