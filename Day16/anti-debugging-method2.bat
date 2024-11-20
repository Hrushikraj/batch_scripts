@echo off

:: Method 2: Detect execution speed anomalies (basic timing check)
set "start=%time%"
:: Simulate a short delay
timeout /t 2 >nul
set "end=%time%"
if "%start%"=="%end%" (
    echo Timing anomaly detected. Exiting.
    exit /b
)
echo "No debuggers are detected"
pause