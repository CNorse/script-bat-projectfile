@Echo off
cls
c:\windows\system32\mplay32 /play /close c:\Windows\media\tada.wav

echo T.BAT started at
time/t
echo T.BAT started at >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
time/t >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
date/t >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
echo. >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt

:START
ping 8.8.8.8
if errorlevel 1 (
c:\windows\system32\mplay32 /play /close c:\Windows\media\ding.wav
echo.
echo ------------OFFLINE------------
time/t
echo TIME OF DISCONNECTION >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
time/t >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
date/t >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
echo. >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
:NOTONLINE
ping 8.8.8.8
if errorlevel 1 (
echo No Internet.
time/t
) else (
c:\windows\system32\mplay32 /play /close c:\Windows\media\tada.wav
echo.
echo ------------Now Online again------------
time/t
echo NOW ONLINE >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
time/t >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
date/t >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
echo. >> C:\Users\CNorse\Desktop\script-bat-projectfile\network-logger\network-logs\logs.txt
GOTO START
)
GOTO NOTONLINE


) else (
echo.
echo ------------Now Online------------
time/t

)
GOTO START