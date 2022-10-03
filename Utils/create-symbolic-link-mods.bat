@echo off

if not exist P: (
  GOTO INVALIDPROJECTPATH
) 

if exist P:\Mods (
  GOTO MODSPROJECTFOLDEREXISTS
) 

pushd %~dp0

cd ../Mods

mklink /d P:\Mods %CD%
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