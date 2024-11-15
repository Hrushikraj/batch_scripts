@echo off
Title Hiding entire folder
Color A
:: Check Administrator rights
net session 2>&1
if %errorlevel% neq 0 (
 echo Run the script with administrator mode
 pause
 exit /b )

:: Folder to hide
set "folder_path=C:\path\to\folder"

:: Hide the folder
attrib +h +s "%folder_path%"

if %errorlevel%==0 (
    echo Folder has been hidden successfully.
) else (
    echo Failed to hide the folder.
)
pause
echo.
:: User choice: Unhide or Exit
:menu
echo.
echo Enter "unhide" to unhide the folder or "exit" to close the script.
set /p input=Your choice: 

if /i "%input%"=="unhide" goto unhide
if /i "%input%"=="exit" goto stop
echo Invalid input. Please try again.
goto menu

:unhide
Color E
attrib -h -s "%folder_path%"
if %errorlevel%==0 (
    echo The folder has been unhidden successfully.
) else (
    echo Failed to unhide the folder. Please check the file path.
)
pause
exit /b

:stop
echo Thanks for using the tool!
pause 
exit 