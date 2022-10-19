set usr to "BRUKERNAVN"
set pw to "PASSORD"

tell application "Finder"
    mount volume "smb://10.5.0.5/Transfer" as user name usr with password pw
    mount volume "smb://10.5.0.5/Arkiv" as user name usr with password pw
    mount volume "smb://10.5.0.5/Ressurser" as user name usr with password pw
    mount volume "smb://10.5.0.5/Ansatt" as user name usr with password pw
    mount volume "smb://10.5.0.5/home" as user name usr with password pw
end tell