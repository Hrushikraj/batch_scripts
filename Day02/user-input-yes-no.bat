@echo off
Title User-input-yesorno
Echo Enter exit when you need to stop the program
:condition
set /p input=Enter the name: 
if %input%== exit goto stop
else (goto start)
:start
cls
echo %input%, We are delighted to have you at the event!
pause 
goto condition     ::exits the prompt
:stop
cls
echo Thanks for everything
echo Click on enter to exit 
pause
exit 