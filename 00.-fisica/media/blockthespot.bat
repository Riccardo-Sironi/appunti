@echo off

set /p UserInput= "BlockTheSpot will be installed press 'y' to continue (y/n)? "
if /i "%UserInput%"=="y" (
    powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/mrpond/BlockTheSpot/master/install.ps1' | Invoke-Expression}"
    pause
) else (
    echo "Patch not installed."
    pause
    exit /b
)
