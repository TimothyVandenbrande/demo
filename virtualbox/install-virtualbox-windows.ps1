# Download virtualbox
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://download.virtualbox.org/virtualbox/5.1.14/VirtualBox-5.1.14-112924-Win.exe', 'VirtualBox-5.1.14-112924-Win.exe')"
powershell -Command "Invoke-WebRequest http://download.virtualbox.org/virtualbox/5.1.14/VirtualBox-5.1.14-112924-Win.exe -OutFile VirtualBox-5.1.14-112924-Win.exe

# Run the installer
VirtualBox-5.1.14-112924-Win.exe
