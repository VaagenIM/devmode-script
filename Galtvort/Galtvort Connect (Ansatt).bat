@echo off
set user="BRUKERNAVN"
set pass="PASSORD"

:Start
net use t: \\10.5.0.5\Transfer /user:\%user% %pass%
net use s: \\10.5.0.5\Arkiv /user:\%user% %pass%
net use r: \\10.5.0.5\Ressurser /user:\%user% %pass%
net use k: \\10.5.0.5\Ansatt /user:\%user% %pass%
net use h: \\10.5.0.5\home /user:\%user% %pass%
if ERRORLEVEL 1 goto End

:End
echo Kan ikke koble til Galtvort, er du på IM nettet?
pause