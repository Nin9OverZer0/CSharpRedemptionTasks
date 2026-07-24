@echo off
setlocal enabledelayedexpansion

echo ========================================
echo   Git User Configuration
echo ========================================
echo.

:: Prompt for Git user.name
set /p "GIT_NAME=Enter your Git user.name: "
if "!GIT_NAME!"=="" (
    echo Error: user.name cannot be empty.
    pause
    exit /b 1
)

:: Prompt for Git user.email
set /p "GIT_EMAIL=Enter your Git user.email: "
if "!GIT_EMAIL!"=="" (
    echo Error: user.email cannot be empty.
    pause
    exit /b 1
)

echo.
echo Setting Git configuration...
echo.

:: Set globally
git config --global user.name "!GIT_NAME!"
if errorlevel 1 (
    echo Failed to set user.name. Is Git installed and in PATH?
    pause
    exit /b 1
)

git config --global user.email "!GIT_EMAIL!"
if errorlevel 1 (
    echo Failed to set user.email. Is Git installed and in PATH?
    pause
    exit /b 1
)

echo.
echo Successfully set:
echo   user.name  = !GIT_NAME!
echo   user.email = !GIT_EMAIL!
echo.
echo These settings are applied globally.
echo.

:: Optional: show current config
echo Current global Git user config:
git config --global --get user.name
git config --global --get user.email
echo.

pause
endlocal
