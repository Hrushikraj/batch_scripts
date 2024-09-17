@echo off
Title Create-folder
:: mkdir C:\Users\HRUSHIK RAJ S\Desktop\MAIN\Malware-data\bat-codes\practice\bevarsi
echo click enter to take userinput to create a new folder
pause
set /p folder_name=Enter the new folder name: 
set /p folder_path=Enter the path where folder to be created: 
set new_path= %folder_path%\%folder_name% 
::to check the path dont insert spaces
echo %new_path%
mkdir %new_path%
pause
exit
::mkdir %folder_path%\%folder_name%