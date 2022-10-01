@echo off

IF [%1] == [] GOTO INVALIDSTEAMPATH
IF [%2] == [] GOTO INVALIDSTEAMPATH

set arg1=%1
set arg2=%2

if not exist %arg1% (
  GOTO INVALIDSTEAMPATH
) 

if not exist %arg2% (
  GOTO INVALIDPROJECTPATH
) 
set dayztoolspath="%arg1:"=%\common\DayZ Tools\Bin\Workbench\"

if not exist %dayztoolspath% (
  GOTO DAYZTOOLSNOTINSTALLED
) 

PUSHD %dayztoolspath%

set dayztoolsmodparampath="workbenchApp.exe -mod="%arg2%""
start "" %dayztoolsmodparampath:"=%
echo %dayztoolsmodparampath%
POPD
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
echo DAYz Tools was not found in the specified Path: %dayztoolspath%!
pause
goto :eof