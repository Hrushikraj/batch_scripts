@echo off
Title Open-files-using-bat
start excel.exe "E:\PROJECTS\datasets\adfa_ld_dataset.csv"
pause
start /d "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" excel.exe "E:\PROJECTS\datasets\adfa_ld_dataset.csv"

exit