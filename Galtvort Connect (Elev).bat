@echo off
set user=guest

:Start
net use t: \\10.5.0.5\Transfer /user:\%user% ""
net use s: \\10.5.0.5\Arkiv /user:\%user% ""
net use r: \\10.5.0.5\Ressurser /user:\%user% ""
if ERRORLEVEL 1 goto End

:End
echo Kan ikke koble til Galtvort, er du på IM nettet?
pause