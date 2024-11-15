@echo off
Title Hiding files using bat
Color A 
net session 2>&1
if %errorlevel% neq 0 (
 echo Run the script with administrator mode
 pause
 exit /b )

:: Path to the file to hide
set "file_path=C:\path\to\file.txt"

:: Hide the file
attrib +h +s "%file_path%"

if %errorlevel%==0 (
    echo File has been hidden successfully.
) else (
    echo Failed to hide the file.
)
pause
:: User choice: Unhide or Exit
:menu
echo.
echo Enter "unhide" to unhide the file or "exit" to close the script.
set /p input=Your choice: 

if /i "%input%"=="unhide" goto unhide
if /i "%input%"=="exit" goto stop
echo Invalid input. Please try again.
goto menu

:unhide
Color E
attrib -h -s "%file_path%"
if %errorlevel%==0 (
    echo The file has been unhidden successfully.
) else (
    echo Failed to unhide the file. Please check the file path.
)
pause
exit /b

:stop
echo Thanks for using the tool!
pause
exit