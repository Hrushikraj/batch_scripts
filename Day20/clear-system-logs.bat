@echo off
Title Clearing System Logs
Color A 
net session 2>&1
if %errorlevel% neq 0 (
    echo Run the script with administrator rights
	pause
    exit /b )
pause
echo Click enter to run the clear log script
pause
call clearlogss
:clearlogss
for /f "*tokens=*" %%a in ('wevtutil el') do (
    echo Clearing data log %%a 
	wevtutil cl %%a 
	)
echo All logs cleared successfully
goto :eof
pause
exit