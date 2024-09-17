@echo off
color A 
Title Batch script Array 
set A=Rakesh Mohan Ravi
for %%b in (%A%) do ( echo %%b
echo The Winners..
timeout /t 5 /nobreak )
:: timeout /t 5 /nobreak > nul )
:: >nul is used to hide the timing count
pause