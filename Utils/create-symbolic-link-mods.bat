@echo off

if not exist P: (
  GOTO INVALIDPROJECTPATH
) 

if not exist P:\Mods (
  pushd %~dp0
  cd ../Mods
  mklink /d P:\Mods %CD%
) 

for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\bohemia interactive\Dayz" /v "main" 2^>nul') do (
	set _DAYZPATH="%%B"
  set _DAYZPATHMODS="%%B\Mods"
)

if exist %_DAYZPATH% (
  if not exist %_DAYZPATHMODS% (
    mklink /J %_DAYZPATH% "P:\Mods"
  )
) 

pause
goto :eof

:INVALIDREPOMODSPATH
echo Invalid Repository Mod Path!
pause
goto :eof

:INVALIDPROJECTPATH
echo The Project P: dayz path dont exists!
pause
goto :eof

:MODSPROJECTFOLDEREXISTS
echo A P:\Mods folder already exists!
pause
goto :eof