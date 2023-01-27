@echo off

echo.
echo -----Restarting Internet Connectivity-----
timeout /t 3
netsh interface set interface "Local Area Connection" DISABLED

echo.
echo -----Attempting to Enable Internet Connectivity-----
timeout /t 3
netsh interface set interface "Local Area Connection" ENABLED

echo ---Done!---
echo ---If problem persists contact your System Administrator---
timeout /t 5


