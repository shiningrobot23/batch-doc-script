@echo off
setlocal EnableExtensions

title Docker Script

if "%~1"=="" (
    echo Running docker-script.bat.
    echo Please add the -help argument for more commands!
    goto :eof
)

if /i "%~1"=="-help" (
    echo.
    echo Available arguments:
    echo   -help           Lists available arguments
    echo   -version        Displays the program version
    echo   stmode          Activates the experimental self-typing feature
    echo   stmode --unlock Skips the warning prompt
    echo.
    goto :eof
)

if /i "%~1"=="-version" (
    echo Currently running docker-script v0.1.0.0067
    goto :eof
)

if /i "%~1"=="stmode" (
    if /i "%~2"=="--unlock" (
        goto glitch_loop
    )

    echo.
    echo You have activated the self-typing script!
    echo WARNING: HIGHLY UNSTABLE AND YOU'RE RUNNING THIS IN SAFE MODE!!!
    echo.

    choice /c YN /n /m "Do you wish to continue? (Y/N): "

    if errorlevel 2 (
        echo.
        echo NOOOOOooooooo...!
        echo Error: YOU REFUSED THE SCRIPT!!!
        goto :eof
    )

    if errorlevel 1 (
        echo.
        echo Starting...
        timeout /t 6 >nul
        echo Error: an unexpected glitch occurred.
        pause
        cls
        goto glitch_loop
    )
)

echo Unknown argument: %~1
echo Use -help to see available commands.
goto :eof


:glitch_loop
echo You are not a human at all!
timeout /t 1 >nul
goto glitch_loop
