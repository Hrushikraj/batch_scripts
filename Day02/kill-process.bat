@echo off
color A
Title Kill-process
echo Click enter to kill the process predefined
pause
taskkill /f /im brave.exe
pause
:: /f means to force kill the process to check the current process run cmd 'tasklist' first in cmd