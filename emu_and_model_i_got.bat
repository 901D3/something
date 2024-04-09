@echo off
echo Notes:
echo The default model is fx991cnx
echo Consider checking the model you already have
rem If you dont have CasioEmuNeo or CasioEmuX then get one, consider checking what model you have, if dont have then get one in the github:
rem For the rom i can't provide it here sorry
rem https://github.com/user202729/CasioEmu/tree/stable/models
rem https://github.com/coder114514/CasioEmuX-win/tree/main/models
rem Feel free to modify this file
rem After choose the emu, first time choose a model it will execute blank so that is the problem i got
echo Type "q" or "exit" to close the program

:choose_emu
echo Choose your calcEmu:
set /p tempInput_emu=

if "%tempInput_emu%"=="cen" (
  (
    :input_model_cen
    echo Enter your calculator model:
      (
        set /p userInput_cen=
      )
    if "%userInput_cen%"=="q" (
        echo Exiting the program...
        exit /b
    )

    if "%userInput_cen%"=="exit" (
        echo Exiting the program...
        exit /b
    )

    if "%userInput_cen%"=="fx991cnx" (
      (
        echo Running CasioEmuX with calculator model fx991cnx...
        rem Remove one rem command below for your selection
        rem start "" "<exe file>" fx991cnx
        rem <exe file> fx991cnx
        goto input_model_cen
      )
    )
    goto input_model_cen
)
    echo Running CasioEmuNeo with calculator model %userInput_cen%..
    rem Remove one rem command below for your selection
    rem start "" "<exe file>" %userInput_cen%
    rem <exe file> %userInput_cen%
    goto input_model_cen
  )
)
if "%tempInput_emu%"=="cenx" (
  (
    :input_model_cenx
    echo Enter your calculator model:
      (
        set /p userInput_cenx=
      )
    if "%userInput_cenx%"=="q" (
        echo Exiting the program...
        exit /b
    )

    if "%userInput_cenx%"=="exit" (
        echo Exiting the program...
        exit /b
    )

    if "%userInput_cenx%"=="fx991cnx" ( 
      (
        echo Running CasioEmuX with calculator model fx991cnx...
        rem Remove one rem command below for your selection
        rem start "" "<exe file>" fx991cnx
        rem <exe file> fx991cnx
        goto input_model_cenx
      )
    )
)
    echo Running CasioEmuX with calculator model %userInput_cenx%...
    rem Remove one rem command below for your selection
    rem start "" "<exe file>" %userInput_cenx%
    rem <exe file> %userInput_cenx%
    goto input_model_cenx
  )
)
echo Invalid choice for calculator emulator.
goto choose_emu
