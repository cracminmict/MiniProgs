@echo off
title Hello World
timeout /t 1
echo Hello World
set repeat=0
title Error detected
color A
prompt VIRUS DETECTED
cls
Repeat:
color 09
timeout /t 0.4
color 4C
timeout /Tt 0.4
color 7F
timeout /t 0.4
color 3B
timeout /t 0.4
color 4E
timeout /t 0.4
color 5B
timeout /t 0.4
color 3C
timeout /t 0.4
color 19
timeout /t 0.4
color C
timeout /t 0.4
color B
timeout /t 0.4
color C
timeout /t 0.4
color D
timeout /t 0.4
color E
timeout /t 0.4
color F
timeout /t 0.4
color AE
timeout /t 0.4
color FC
timeout /t 0.4
color AC
timeout /t 0.4
color CA
set /repeat repeat=%repeat+1
pause
if %repeat% == 10 goto Fin
goto Repeat