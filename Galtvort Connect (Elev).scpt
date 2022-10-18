set usr to "guest"
set pw to ""

tell application "Finder"
    mount volume "smb://10.5.0.5/Transfer" as user name usr with password pw
    mount volume "smb://10.5.0.5/Ressurser" as user name usr with password pw
end tell