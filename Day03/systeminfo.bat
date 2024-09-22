@echo off
echo ==============================================
echo           BASIC SYSTEM INFORMATION
echo ==============================================
wmic os get caption,version
wmic computersystem get name,model,manufacturer
wmic cpu get name
wmic memorychip get capacity
pause
