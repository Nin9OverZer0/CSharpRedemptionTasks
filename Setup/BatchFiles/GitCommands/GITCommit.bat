@echo off
setlocal enabledelayedexpansion

echo ========================================
echo   Git Commit and Push
echo ========================================
echo.

:: Check if we are inside a Git repository
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo No Git repository found in the current location.
    echo.

    set /p "REMOTE_URL=Enter the HTTP link for the remote repository: "
    if "!REMOTE_URL!"=="" (
        echo Error: Repository URL cannot be empty.
        pause
        exit /b 1
    )

    echo.
    echo Running: git init
    git init
    if errorlevel 1 (
        echo Failed to initialize repository. Is Git installed and in PATH?
        pause
        exit /b 1
    )

    echo.
    echo Running: git branch -M main
    git branch -M main

    echo.
    echo Running: git remote add origin !REMOTE_URL!
    git remote add origin !REMOTE_URL!
    if errorlevel 1 (
        echo Failed to add remote. Check the URL and try again.
        pause
        exit /b 1
    )

    echo.
    echo Repository initialized and set to main branch.
    echo.
) else (
    echo Git repository already exists in the current location.
    echo.
)

:: Stage all files
echo Running: git add .
git add .
echo.

:: Request commit message
set /p "COMMIT_MSG=Enter commit message: "
if "!COMMIT_MSG!"=="" (
    echo Error: Commit message cannot be empty.
    pause
    exit /b 1
)

echo.
echo Running: git commit -m "!COMMIT_MSG!"
git commit -m "!COMMIT_MSG!"
if errorlevel 1 (
    echo Commit failed. There may be nothing to commit or a configuration issue.
    pause
    exit /b 1
)

echo.
echo Running: git push -u -f origin main
git push -u -f origin main
if errorlevel 1 (
    echo Push failed. Check your credentials, remote URL, or network connection.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Done
echo ========================================
echo.
pause
endlocal