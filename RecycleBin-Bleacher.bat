@echo off
echo This script will delete all files in C:\$Recycle.Bin.
echo Are you sure you want to proceed?
choice /m "Press Y to confirm or N to cancel"

if errorlevel 2 (
    echo Operation canceled by the user.
    exit /b
)

echo Deleting files...
del /f /s /q C:\$Recycle.Bin\*.*
echo Files deleted successfully.
pause
