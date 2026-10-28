@echo off
title HealthMate AI Launcher
echo ======================================================
echo           Starting HealthMate AI Web App...
echo ======================================================
echo.

cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    echo [ERROR] Virtual environment not found in .venv!
    echo Please make sure .venv exists.
    pause
    exit /b 1
)

echo Activating environment and starting Streamlit...
echo The app will open in your browser automatically at http://localhost:8501
echo Press Ctrl+C in this terminal window to stop the server.
echo.

".venv\Scripts\python.exe" -m streamlit run healthmate_chatbot.py
pause
