@echo off
Title Enable Taskmanager
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit /b
)

echo ==============================================
echo Re-enabling System Tools
echo ==============================================

:: Re-enable Task Manager
echo Enabling Task Manager...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /f

:: Re-enable Registry Editor
echo Enabling Registry Editor...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /f

echo ==============================================
echo System Tools Enabled Successfully.
echo ==============================================
pause
