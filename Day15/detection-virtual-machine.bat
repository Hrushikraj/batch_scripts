@echo off
Title detecting virtualmachine
Color 7

:: Query the manufacturer and product name of the baseboard
for /f "tokens=2 delims==" %%A in ('wmic baseboard get manufacturer /value 2^>nul') do set "Manufacturer=%%A"
for /f "tokens=2 delims==" %%A in ('wmic computersystem get model /value 2^>nul') do set "Model=%%A"

:: Convert values to uppercase for comparison
set "Manufacturer=%Manufacturer:~0,10%"
set "Model=%Model:~0,12%"
setlocal enabledelayedexpansion
set "Manufacturer=!Manufacturer!"
set "Model=!Model!"

:: Check for common virtualization identifiers
if /i "!Manufacturer!"=="VIRTUALBOX" (
    echo This script is running in VirtualBox.
    pause
    exit /b
)
if /i "!Model!"=="VIRTUALBOX" (
    echo This script is running in VirtualBox.
    pause
    exit /b
)
if /i "!Manufacturer!"=="VMWARE" (
    echo This script is running in VirtualBox.
    pause
    exit /b
)
if /i "!Model!"=="VMWARE" (
    echo This script is running in VirtualBox.
    pause
    exit /b
)
:: No virtualization detected
Color A
echo This script is running on a physical machine or an unrecognized virtual environment.
pause
