@echo off
Title Looping-through-files-in-folder
set /p folder_path= Enter the folder name to display its contents: 
chdir /d %folder_path%
::cd %folder_path%  it doesn't work
echo %cd%
for %%i in (*.*) do echo %%i
pause