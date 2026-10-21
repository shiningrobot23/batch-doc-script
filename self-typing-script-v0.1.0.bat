@echo off
set /p yes_or_no=You have activated the self-typing script! Version: 0.1.0. Do you wish to continue? Y/n
if "%yes_or_no%"=="Y" (
    echo Starting...
    echo Error: an unexpected glitch occured.
    pause
    cls
    echo 67!
    :loop
    echo 67!
    timeout /t 1 >nul
    goto loop
) else (
    echo NOOOOOooooooo...!
    echo Error: YOU REFUSED THE SCRIPT!!!
)
