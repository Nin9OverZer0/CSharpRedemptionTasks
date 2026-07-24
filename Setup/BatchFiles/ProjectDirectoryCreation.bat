@echo off
REM Creates the Module101 / Module102 lesson folder structure
REM and places a GITCommit.bat in every lesson folder.
REM Run this from the directory where you want the structure created.

mkdir Module101
mkdir Module101\Lesson1
mkdir Module101\Lesson2
mkdir Module101\Lesson3
mkdir Module101\Lesson4
mkdir Module101\Lesson5
mkdir Module101\Lesson6

mkdir Module102
mkdir Module102\Lesson1
mkdir Module102\Lesson2
mkdir Module102\Lesson3
mkdir Module102\Lesson4
mkdir Module102\Lesson5
mkdir Module102\Lesson6
mkdir Module102\Lesson7

REM ----- Create GITCommit.bat in every lesson folder -----
call :CreateGITCommit Module101\Lesson1
call :CreateGITCommit Module101\Lesson2
call :CreateGITCommit Module101\Lesson3
call :CreateGITCommit Module101\Lesson4
call :CreateGITCommit Module101\Lesson5
call :CreateGITCommit Module101\Lesson6

call :CreateGITCommit Module102\Lesson1
call :CreateGITCommit Module102\Lesson2
call :CreateGITCommit Module102\Lesson3
call :CreateGITCommit Module102\Lesson4
call :CreateGITCommit Module102\Lesson5
call :CreateGITCommit Module102\Lesson6
call :CreateGITCommit Module102\Lesson7

echo Folder structure and GITCommit.bat files created successfully.
pause
goto :eof

:CreateGITCommit
(
echo @echo off
echo setlocal enabledelayedexpansion
echo.
echo echo ========================================
echo echo   Git Commit and Push
echo echo ========================================
echo echo.
echo.
echo :: Check if we are inside a Git repository
echo git rev-parse --is-inside-work-tree ^>nul 2^>^&1
echo if errorlevel 1 ^(
echo     echo No Git repository found in the current location.
echo     echo.
echo.
echo     set /p "REMOTE_URL=Enter the HTTP link for the remote repository: "
echo     if "!REMOTE_URL!"=="" ^(
echo         echo Error: Repository URL cannot be empty.
echo         pause
echo         exit /b 1
echo     ^)
echo.
echo     echo.
echo     echo Running: git init
echo     git init
echo     if errorlevel 1 ^(
echo         echo Failed to initialize repository. Is Git installed and in PATH?
echo         pause
echo         exit /b 1
echo     ^)
echo.
echo     echo.
echo     echo Running: git branch -M main
echo     git branch -M main
echo.
echo     echo.
echo     echo Running: git remote add origin !REMOTE_URL!
echo     git remote add origin !REMOTE_URL!
echo     if errorlevel 1 ^(
echo         echo Failed to add remote. Check the URL and try again.
echo         pause
echo         exit /b 1
echo     ^)
echo.
echo     echo.
echo     echo Repository initialized and set to main branch.
echo     echo.
echo ^) else ^(
echo     echo Git repository already exists in the current location.
echo     echo.
echo ^)
echo.
echo :: Stage all files
echo echo Running: git add .
echo git add .
echo echo.
echo.
echo :: Request commit message
echo set /p "COMMIT_MSG=Enter commit message: "
echo if "!COMMIT_MSG!"=="" ^(
echo     echo Error: Commit message cannot be empty.
echo     pause
echo     exit /b 1
echo ^)
echo.
echo echo.
echo echo Running: git commit -m "!COMMIT_MSG!"
echo git commit -m "!COMMIT_MSG!"
echo if errorlevel 1 ^(
echo     echo Commit failed. There may be nothing to commit or a configuration issue.
echo     pause
echo     exit /b 1
echo ^)
echo.
echo echo.
echo echo Running: git push -u -f origin main
echo git push -u -f origin main
echo if errorlevel 1 ^(
echo     echo Push failed. Check your credentials, remote URL, or network connection.
echo     pause
echo     exit /b 1
echo ^)
echo.
echo echo.
echo echo ========================================
echo echo   Done
echo echo ========================================
echo echo.
echo pause
echo endlocal
) > "%~1\GITCommit.bat"
goto :eof