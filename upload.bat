IF "%~1"=="" (
    echo Commit message is required.
    echo Usage: git_daily_tasks.bat "Your commit message"
    exit /b 1
)

git add .

git commit -m "%~1"

git pull origin main

git push origin main

