@echo off
Title Anti debugging method3
:: Method 4: Use a known "debugger crash" action (attempt invalid operations)
:: Trigger an invalid operation (e.g., divide by zero) to see if it causes a crash.
set /a "x=1/0" 2>nul
if %errorlevel% neq 0 (
    echo Potential debugger crash detected. Exiting.
    exit /b
)

echo No debugging or analysis environment detected. Script running normally.
pause