@echo off
echo Notes:
echo The default model in CasioEmuNeo is fx991cnx
echo Consider checking the model you already have
rem If you dont have CasioEmuNeo or CasioEmuX then get one, consider checking what model you have, if dont have then get one in the github:
rem https://github.com/user202729/CasioEmu/tree/stable/models
rem https://github.com/coder114514/CasioEmuX-win/tree/main/models
rem For the rom i can't provide it here, sorry
rem Feel free to modify this file
echo Type "q" or "exit" to close the program

:choose_emu
echo Choose your emulator:
set /p emu=

if "%cen%"=="q" (
    echo Exiting the program...
    exit /b
)

if "%cen%"=="exit" (
    echo Exiting the program...
    exit /b
)

if %emu%==cen (
    cd emu
    cen.bat
)
if %emu%==cex (
    cd emu
    cex.bat
)
if errorlevel 1 (
    echo Invalid choice for calculator emulator. Please try again.
    goto choose_emu
)
