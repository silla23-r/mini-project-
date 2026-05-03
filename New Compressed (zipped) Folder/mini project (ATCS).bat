@echo off
title ATTCS Server Launcher
echo ===================================================
echo Starting AI Train Traffic Control System (ATTCS)...
echo ===================================================

:: Navigate to the project directory
cd /d "c:\Users\SILLA ROHAN KUMAR\Downloads\AI(ATTCS)"

:: Start the backend server in a separate window
start "ATTCS Backend Server" cmd /k ".\apache-maven-3.9.6\bin\mvn.cmd spring-boot:run"

echo.
echo Waiting for the backend server to start (15 seconds)...
timeout /t 15 /nobreak >nul

echo.
echo Opening the interface in your default browser...
start http://localhost:8080

echo.
echo Done! You can close this window. The server will keep running in the other window.
pause
