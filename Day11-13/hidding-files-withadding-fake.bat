@echo off
Title Making Files Hidden in Plain Sight
::Check Administrator Rights
net session 2>&1
if %errorlevel% neq 0 (
 echo Run the script with administrator mode
 pause
 exit /b )
:: Rename file to make it look like a system file
set "file_path=C:\path\to\file.exe"
set "new_name=C:\Windows\System32\sysfile.dll"

rename "%file_path%" "%new_name%"

if %errorlevel%==0 (
    echo File renamed successfully to blend with system files.
) else (
    echo Failed to rename the file.
)

pause
