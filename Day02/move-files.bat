@echo off
Title move-files-using-bat
echo Click enter to move the files from Drive E to Desktop/MAIN
pause
move "E:\PROJECTS\datasets\benign_bro_microbehaviors.csv" "C:\Users\HRUSHIK RAJ S\Desktop\MAIN\Malware-data\bat-codes\practice"
echo Click to reverse the process
pause
move "C:\Users\HRUSHIK RAJ S\Desktop\MAIN\Malware-data\bat-codes\practice\benign_bro_microbehaviors.csv" "E:\PROJECTS\datasets"
echo Click enter to move a set of files - disabled
pause

exit
copy "E:\PROJECTS\datasets\benign_bro_microbehaviors.csv" "C:\Users\HRUSHIK RAJ S\Desktop\MAIN\Malware-data\bat-codes\practice"

