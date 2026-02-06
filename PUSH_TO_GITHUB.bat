@echo off
REM Run this in Command Prompt from this folder to push to GitHub.
REM When prompted for password, use your GitHub Personal Access Token (not your GitHub password).

cd /d "%~dp0"

echo Checking git...
git --version
if errorlevel 1 (
    echo Git not found. Install Git from https://git-scm.com/
    pause
    exit /b 1
)

if not exist .git (
    echo Initializing git repo...
    git init
)

REM Git needs user.name and user.email to create a commit (set locally for this repo only)
git config user.email "beejak@users.noreply.github.com"
git config user.name "beejak"

echo Adding all files...
git add .

echo Creating commit...
git commit -m "Initial commit: Cursor agent skills tutorial"
if errorlevel 1 (
    echo Commit failed or nothing to commit. If "nothing to commit", run: git status
)

REM Create/rename branch to main - required before push
git branch -M main

echo Setting remote to https://github.com/beejak/cursor-agent-skills
git remote remove origin 2>nul
git remote add origin https://github.com/beejak/cursor-agent-skills.git

echo.
echo Pushing to GitHub...
echo When asked for password, paste your Personal Access Token.
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo Push failed. Common fixes:
    echo 1. Use a Personal Access Token as password: https://github.com/settings/tokens
    echo 2. Or run: git push -u origin main   and enter credentials when prompted
) else (
    echo.
    echo Done. Check https://github.com/beejak/cursor-agent-skills
)

pause
