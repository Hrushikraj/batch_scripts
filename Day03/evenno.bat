:: print even number until: 2-100
:: (start,difference,stop)
@echo off
title print even number until: 2-100
Color A
for /L %%i in (2,2,100) do (
echo %%i >> sy.csv )
pause