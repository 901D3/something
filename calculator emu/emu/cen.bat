@echo off
    :input_model_cen
    echo Enter your calculator model:
        set /p cen=

    if "%cen%"=="q" (
        echo Exiting the program...
        exit /b
    )

    if "%cen%"=="exit" (
        echo Exiting the program...
        exit /b
    )

    echo Running CasioEmuNeo with calculator model %cen%...
    rem [CasioEmuNeo] %cen%
    goto input_model_cen
