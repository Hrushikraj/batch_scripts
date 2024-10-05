@echo off
Color 1
Title Creating Persistence via Scheduled Tasks
:: Check for Administrator rights
net session >nul 2>&1
if  %errorlevel% neq 0 (
 echo Execute the script in Administrator Mode 
 pause
 exit  /b )
::define the program path you want to execute
set "fileToPersist=C:\path\to\your\program.exe"
set "taskName=Givenametotask"
::define delay (e.g., 5 minutes delay)
set "delayTime=0005:00"
:: Create a scheduled task to run the program at every user login
echo Creating persistence via scheduled task:
schtasks /create /sc onlogon /tn "%taskName%" /tr "%fileToPersist%" /delay %delayTime% /rl highest /f
::Check if the task was successfully created
schtasks /query /tn "%taskName%" >nul 2>&1
if %errorlevel%==0 (
    Color A
    echo program added via scheduled task successfully.
) else (
    Color C
    echo Failed to add program via scheduled task.
)

pause
