@echo off
set /p yes_or_no=You have activated the self-typing script! Version: 0.1.0. Do you wish to continue? Y/n
if "%yes_or_no%"=="Y" (
    echo You have activated the self-typing script!
    echo Process is complete! Please press any key to continue...
    pause
) else (
    echo NOOOOOooooooo...!
)
