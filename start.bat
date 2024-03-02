:: Important stuff
@echo off && cls
title GoAniWayBackMachine
if not exist "installed" (if not exist "notinstalled" (echo GoAniWayBackMachine Configuration File >> notinstalled))
::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start GoAniWayBackMachine ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo GoAniWayBackMachine is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo GoAnimate-Website is now starting...
echo Please navigate to http://localhost on your browser.
npm start
