@echo off
:: ==
:: Kjør som admin
:: ==
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
:: ==
:: Skru på devmode
:: ==
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

:: ==
:: Løs opp ExecutionPolicy for å tillate Python venv (Unsigned scripts)
:: Obs - med denne på Unrestricted kan alle scripts, fra internett eller ikke, kjøre med tillatelse
:: ==
Set-ExecutionPolicy Unrestricted -Force
