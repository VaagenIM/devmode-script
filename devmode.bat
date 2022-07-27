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
:: Løs opp ExecutionPolicy for å tillate Python Venv
:: Obs: Kan være farlig da dette gir ukjente kilder tillatelse til å kjøre ekstra koder
:: ==
:: Fjern :: for å løse opp ExecutionPolicy.
:: Set-ExecutionPolicy Unrestricted -Force
