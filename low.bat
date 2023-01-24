@echo off
setlocal enabledelayedexpansion

set /a exp=2
set /a num=-1
set /a lastnum=!num!

for /l %%a in (0,!num!, -512) do (
	set /a lastnum=!num!
	set /a num=!num!*!exp!
	set /a byte=!num!/4
	set /a kilobyte=!byte!/1024
	set /a megabyte=!kilobyte!/1024
	set /a gigabyte=!megabyte!/1024
	if errorlevel 1 (
		goto :next
		pause > nul
	)
	echo !num!	!kilobyte!	!megabyte!	!gigabyte!
	if errorlevel 1 (
		goto :next
		pause > nul
	)
)

:next

set /a num=!lastnum!

echo.

for /l %%a in (0,-1,-999999) do (
	set /a num=!num!-1
	echo Lowest: !num!
	if errorlevel == 1 (
		pause > nul
		goto:end
	)
)
:end
pause > nul