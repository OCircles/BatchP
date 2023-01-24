@echo off
setlocal EnableDelayedExpansion

rem Include core libs
for /f %%a in ('dir /s /b core') do (
	set ext=%%~xa
	if "!ext!" == "" call include %%a
)

rem These are the C#-like libs
set /a index=0
for /f %%a in ('dir /s /b Libs') do (
	set ext=%%~xa
	if "!ext!" == "" (
        set "array.libs.!index!=%%a"
    )
)

rem Define the file path and name
set "file=parser.bat"

rem Open the file and read each line
for /F "usebackq tokens=1-2 delims=" %%i in ("%file%") do (
    set "str=%%i"
    set "tooken="
    call strLen return str
    rem Loop through each character in the string
    for /L %%j in (0,1,!return!) do (
        set "char=!str:~%%j,1!"
        if defined char (
            rem echo !char!
        )
    )
)

endlocal
goto:eof