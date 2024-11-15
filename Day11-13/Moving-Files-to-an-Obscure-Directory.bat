@echo off
Title Moving Files to an Obscure Directory
Color A
::Administrator rights check
net session 2>&1
if %errorlevel% neq 0 (
 echo Run the script with administrator mode
 pause
 exit /b )
:: Original file path
set "original_file=C:\path\to\file.txt"

:: Obscure destination folder
set "hidden_folder=C:\Windows\System32\drivers"

:: Move the file
move "%original_file%" "%hidden_folder%"

if %errorlevel%==0 (
    echo File moved to a hidden location.
) else (
    echo Failed to move the file.
)

pause
