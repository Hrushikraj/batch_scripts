@echo off
@echo off
Title Disables - Task Manager & Registry Editor
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "Please run this script as Administrator."
    pause
    exit /b
)

echo ==============================================
echo Automation Script: Disabling System Tools
echo ==============================================

:: Disable Task Manager by modifying the registry
echo Disabling Task Manager...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f

:: Disable Registry Editor by modifying the registry
echo Disabling Registry Editor...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f

echo ==============================================
echo System Tools Disabled Successfully.
echo ==============================================
echo       --
echo Click enter to Re Enable task manager and Registry Editor
pause
:: Calls and executes the script to re-enable the task manager.
:: Other scripts should be in same folder 
CALL enable-taskmgr.bat
pause
echo If both task manager and registry editor is re-enabled  then reply with 1 otherwise reply with 0
echo ===============================================
set /p input= Enter 1 if already re-enabled otherwise enter 0
if %input%== 1 goto stop
else (goto backup)
:backup
echo another script will be executed which will re-enable task manager and registry Editor
echo ===================================================
:: Another script when previous script failed
CALL enable-taskmgr-reg.bat
echo Now check the task manager working or not
pause

