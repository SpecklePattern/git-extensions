@echo off

SETLOCAL

set GITSIMPLE_DESTINATION=""

set "GITSIMPLE_SOURCE=%~dp0"
set "GITSIMPLE_SOURCE=%GITSIMPLE_SOURCE%..\linux\git-*"

IF EXIST "C:\Program Files\Git\usr\bin" (
	set "GITSIMPLE_DESTINATION=C:\Program Files\Git\usr\bin"
)

IF "%GITSIMPLE_DESTINATION%"=="" (
	IF EXIST "C:\Program Files (x86)\Git\usr\bin" (
		set "GITSIMPLE_DESTINATION=C:\Program Files (x86)\Git\usr\bin"
	)
)

echo Source = "%GITSIMPLE_SOURCE%"
echo Destination = "%GITSIMPLE_DESTINATION%"

IF "%GITSIMPLE_DESTINATION%"==""  (
	echo "ERROR, Install failed, Copy destination is not set. Is Git bash and mingw installed installed?"
	echo "INFO, Please visit https://git-scm.com/downloads, download installer and install git with default settings (with mingw and bash enabled)"
	PAUSE
	EXIT
)

IF "%GITSIMPLE_SOURCE%"==""  (
	echo "ERROR, Install failed, Copy source is not set. Please run the script in the .bat file directory."
	PAUSE
	EXIT
)

COPY /Y "%GITSIMPLE_SOURCE%" "%GITSIMPLE_DESTINATION%"

echo Files from "%GITSIMPLE_SOURCE%"
echo Copied to "%GITSIMPLE_DESTINATION%"

PAUSE