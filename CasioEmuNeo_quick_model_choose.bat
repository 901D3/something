@echo off
echo Notes:
echo The default model is fx991cnx
echo If you don't type anything and press enter, the program will choose the default model
echo Consider checking the model you already have
echo Type "q" or "exit" to close the program
rem If you dont have CasioEmuNeo then get one, consider checking what model you have, if dont have then get one in the github:
rem https://github.com/user202729/fxesplus
rem https://github.com/user202729/CasioEmu/tree/stable/models
rem Feel free to modify this file
rem Some command may not work
:input_model
echo Enter your calculator model:
set /p userInput=

if errorlevel 0 (
    echo Running CasioEmuNeo with calculator model %userInput%...
)

if errorlevel 1 (
    echo Invalid model entered. Please try again.
    goto input_model
)

if "%userInput%"=="q" (
    echo Exiting the program...
    exit /b
)

if "%userInput%"=="exit" (
    echo Exiting the program...
    exit /b
)

rem You can use start "" "<exe file>" %userInput% to start a new cmd
rem Or <exe file> %userInput% for the log wirte to the main cmd
rem Remove one rem command below for your selection
rem start "" "<exe file>" %userInput%
rem <exe file> %userInput%
rem Also the model will be the name of the directory which contain interface.png, model.lua and rom.bin
goto input_model
