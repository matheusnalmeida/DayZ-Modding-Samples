@echo off

IF [%1] == [] GOTO INVALIDSTEAMPATH
IF [%2] == [] GOTO INVALIDSTEAMPATH

set arg1=%1
set arg2=%2
set arg3=%3 || "P:\Missions\DayZCommunityOfflineMode.ChernarusPlus"

if not exist %arg1% (
  GOTO INVALIDSTEAMPATH
) 

if not exist %arg2% (
  GOTO INVALIDPROJECTPATH
) 

if not exist %arg3% (
  GOTO INVALIDMISSIONPATH
) 

set dayzpath="%arg1:"=%\common\DayZ\"

if not exist %dayzpath% (
  GOTO DAYZTOOLSNOTINSTALLED
) 

PUSHD %arg3%

echo %arg3%

tasklist | find /i "DayZ_x64.exe" && taskkill /im DayZ_x64.exe /F

tasklist | find /i "DayZDiag_x64.exe" && taskkill /im DayZDiag_x64.exe /F

RD /s /q "storage_-1" > nul 2>&1

POPD

PUSHD %dayzpath%
::-nosplash -noPause -noBenchmark -filePatching -doLogs -scriptDebug=true
set dayzmodparampath="DayZDiag_x64.exe -mod="%arg2%" -mission="%arg3%" -filePatching"
start "" %dayzmodparampath:"=%

POPD
goto :eof

:INVALIDMISSIONPATH
echo Invalid Mission Path!
pause
goto :eof

:INVALIDSTEAMPATH
echo Invalid Steam Path!
pause
goto :eof

:INVALIDPROJECTPATH
echo Invalid P: project mod path!
pause
goto :eof

:DAYZTOOLSNOTINSTALLED
echo DAYz Tools was not found in the specified Path: %dayzpath%!
pause
goto :eof