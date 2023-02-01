@echo off
cls
:: call "c:\Windows\media\Windows Logon.wav"
Title = "Network-Logger-v1.2" 
set /p ipAdress="Enter IP Address you want to ping: "
set /p fileName="Name logfile for %ipAdress%: "
Title = "Network-Logger-v1.2" Pinging: %ipAdress% 
echo --------Pinging started at---------
time/t
color 2
echo Pinging started at >> %fileName%.txt
time/t >> %fileName%.txt
date/t >> %fileName%.txt
echo. >> %fileName%.txt
:START
ping %ipAdress%
if errorlevel 1 (
:: c:\Windows\media\ding.wav
color 4
echo.
echo ------------OFFLINE * Down------------
time/t
echo TIME OF DISCONNECTION >> %fileName%.txt
time/t >> %fileName%.txt
date/t >> %fileName%.txt
echo. >> %fileName%.txt
:NOTONLINE
ping %ipAdress%
if errorlevel 1 (
echo No Internet.
time/t
) else (
:: c:\Windows\media\tada.wav
color 2
echo.
echo ------------Now Online again * Up------------
time/t
echo NOW ONLINE >> %fileName%.txt
time/t >> %fileName%.txt
date/t >> %fileName%.txt
echo. >> %fileName%.txt
GOTO START
)
GOTO NOTONLINE

) else (
echo.
echo ------------Now Online * Up------------
time/t

)
GOTO START