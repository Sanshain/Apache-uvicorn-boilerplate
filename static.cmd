echo off
set /p xpath="Insert path to your static resources: "

IF EXIST "%xpath%" (	
	mklink /D %CD%\Apache24\htdocs\static %xpath%
) ELSE (
	echo "file is not exists"
)

pause