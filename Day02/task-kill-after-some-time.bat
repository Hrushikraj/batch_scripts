@echo off
color A
Title batch script to kill process after some time
start notepad.exe
timeout /t 20 /nobreak  
:: you can also put milisceconds 0.002 etc 
taskkill /f /im notepad.exe
pause