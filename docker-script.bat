@echo off
set /p yes_or_no=You have activated the self-typing script! WARNING: HIGHLY UNSTABLE!!! Do you wish to continue? Y/n
if "%yes_or_no%"=="Y" (
    echo Starting...
    echo Error: an unexpected glitch occured.
    pause
    cls
    :loop
    echo You are not a human at all!
    timeout /t 1 >nul
    goto loop
) else (
    echo NOOOOOooooooo...!
    echo Error: YOU REFUSED THE SCRIPT!!!
)
