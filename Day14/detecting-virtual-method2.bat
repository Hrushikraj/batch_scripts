@echo off
Title Short method to detect sandbox
Color 7
wmic computersystem get manufacturer | findstr /i "vmware virtualbox Qemu" >null
if %errorlevel% equ 0 (
     echo Virtualsed environment is running
	 exit /b
)
Color A 
echo Script is running normally
timeout /t 5 /nobreak
exit