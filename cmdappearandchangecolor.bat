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

color 4C

color 7F

color 3B

color 4E

color 5B

color 3C

color 19

color C

color B

color C

color D

color E

color F

color AE

color FC

color AC

color CA
set /repeat repeat=%repeat+1
pause
if %repeat% == 100 goto Fin
goto Repeat