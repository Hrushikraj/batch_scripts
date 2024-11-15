@echo off
Title Redirecting Attention (decoy files)
::Check Administrator rights
net session 2>&1
if %errorlevel% neq 0 (
 echo Run the script with administrator mode
 pause
 exit /b )
:: Path to the real file and decoy file
set "real_file=C:\path\to\real_file.txt"
set "decoy_file=C:\path\to\decoy_file.txt"
:: Hide the real file
attrib +h +s "%real_file%"

:: Create a decoy file
echo This is a harmless file. > "%decoy_file%"

echo File hiding with a decoy completed.
pause
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
attrib -h -s "%real_file%"
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