:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
::::::::::::::::::::::::::::::::::::::::::::: 
set FileWrite=
if defined FileWrite (echo "FileWrite - defined")
if not defined FileWrite (echo "FileWrite - not defined")
echo 0=%0



:loopBegin
set var=%1
echo 1=%var%
if not defined var (goto loopEnd)
echo %~dp0%~n1%~x1
copy %1 %~dp0%~n1%~x1
git add .
git commit -m "copy %1 %~dp0%~n1%~x1"
::git log -3
git push
del %1
shift /1
goto loopBegin
:loopEnd
echo 0=%0
echo 1=%1
echo 2=%2
echo 3=%3
echo 4=%4
echo 5=%5
echo 6=%6
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::