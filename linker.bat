rem Include fake c# code libs
for /f %%a in ('dir /s /b Libs') do (
	set ext=%%~xa
	if "!ext!" == "" call include %%a
)

