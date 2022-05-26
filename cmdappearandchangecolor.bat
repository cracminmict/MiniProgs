@echo off
title Hello World
echo Hello World
set repeat=0
title Error detected
Repeat:
color 09
timeout /T 0.4
color 4C
timeout /T 0.4
color 7F
timeout /T 0.4
color 3B
timeout /T 0.4
color 4E
timeout /T 0.4
color 5B
timeout /T 0.4
color 3C
timeout /T 0.4
color 19
timeout /T 0.4
color C
timeout /T 0.4
color B
timeout /T 0.4
color C
timeout /T 0.4
color D
timeout /T 0.4
color E
timeout /T 0.4
color F
timeout /T 0.4
color AE
timeout /T 0.4
color FC
timeout /T 0.4
color AC
timeout /T 0.4
color CA
set /repeat repeat=%repeat+1
pause
if %repeat% == 5 goto Fin
goto Repeat