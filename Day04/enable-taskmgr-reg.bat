@echo off
T
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit /b
)

:: Create a .reg file to re-enable Task Manager and Registry Editor
echo Windows Registry Editor Version 5.00 > reenable_tools.reg
echo. >> reenable_tools.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> reenable_tools.reg
echo "DisableTaskMgr"=dword:00000000 >> reenable_tools.reg
echo "DisableRegistryTools"=dword:00000000 >> reenable_tools.reg

:: Apply the .reg file
regedit /s reenable_tools.reg

:: Clean up by deleting the .reg file
del reenable_tools.reg

echo ==============================================
echo Task Manager and Registry Editor Re-enabled!
echo ==============================================
pause
