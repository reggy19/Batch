@echo off
D:
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
call reggyhome.bat
call printwords.bat #Time_Delay

set /p waitminutes=Enter minutes
set /a waitminutes=60*%waitminutes%
if "%waitminutes%" == "" (
	echo no timeout specified
) else (
	timeout %waitminutes%
)
goto :eof
