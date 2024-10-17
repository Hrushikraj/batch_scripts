@echo off
Title Deleting schedule task
Color A 
:: Check for Administrator Rights
net session 2>&1
if %errorlevel% neq 0(
  Color C 
  echo Execute the script with Administrator rights
  pause 
  exit /b )
:: Delete a scheduled task
schtasks /delete /tn "MaliciousTaskName" /f

if %errorlevel%==0 (
    echo Malicious task deleted.
) else (
    echo Failed to delete the task.
)

pause
exit 
