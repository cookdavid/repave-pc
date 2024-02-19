# Get Windows Ready
"Install Chocolatey..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

"Install winget for later..."
choco install winget -y

"Install and run WinDebloat..."
choco install dotnet-7.0-sdk -y
Import-Module $env:ChocolateyInstall/helpers/chocolateyProfile.psm1
refreshenv
dotnet tool install WinDebloat -g
refreshenv
WinDebloat --include-all <-- caution!!
#might want to add back in calculator, clock, developer mode, office 365, office cloud files, onedrive, printer, 

choco install git.install -y
refreshenv
"Install GitHub Desktop..."
choco install github-desktop -y

# Visual Studio 2022 Pro + Extensions (Github Copilot, SpecFlow, WebCompiler 2022, JetBrains Resharper)
"Install Visual Studio 2022..."
choco install visualstudio2022professional -y
choco install visualstudio2022-workload-netweb -y
choco install visualstudio2022-workload-webbuildtools -y

"Install NodeJS..."
choco install nodejs -y
refreshenv

"Install VSCode..."
choco install vscode -y
#choco install vscode-xmltools -y
#choco install vscode-yaml -y
# VS Code Extensions
code --install-extension ms-vscode.csharp
code --install-extension ms-vscode.Powershell
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ms-vscode.Theme-MarkdownKit
code --install-extension humao.rest-client
# gitlens, eslint, json pretty, prettier, editorconfig, copilot

"Install LINQPad..."
choco install linqpad -y

"Install Windows Terminal..."
winget install Microsoft.WindowsTerminal

"Install Powershell..."
choco install pwsh -y
#Oh My Posh

choco install -y --allow-empty-checksums gitextensions beyondcompare
choco install -y --allow-empty-checksums resharper-ultimate-all
#seq

"Install SQL Server..."
choco install sql-server-express -y
choco install sql-server-2022 -y
choco install sql-server-management-studio -y

#Azure tools: Storage Emulator, 

#"Install Fiddler..."
#choco install fiddler -y

#"Install Papercut..."
#choco install papercut -y

# Other Applications
"Install Snagit"
choco install snagit -y

#notion
#calibre


choco intall GoogleChrome -y
choco install -y --allow-empty-checksums slack microsoft-teams spotify
choco install -y --allow-empty-checksums 7zip
#dropbox greenshot
choco install -y --allow-empty-checksums lastpass
#choco install -y --allow-empty-checksums foxitreader '/MERGETASKS="!desktopicon,setdefaultreader,!displayinbrowser"'


#adobe - creative cloud? , premier pro, etc
#peripherals -> logitech, elgato, HP Dock G5, 

#@echo Remove unwanted pre-installed apps
#@powershell -NoProfile -ExecutionPolicy Bypass -Command "$AppList = @('*Disney*', '*king.com*', '*HiddenCity*', '*DolbyLaboratories*', '*Microsoft.MicrosoftOfficeHub*', '*Microsoft.BingNews*', '*getstarted*', '*gethelp*', '*bingfinance*', '*sports*', '*adobe*', '*Microsoft.DrawboardPDF*', '*facebook*', '*bethesda*', '*farmville*'); foreach ($App in $AppList) { Get-AppxPackage -Name $App | Remove-AppxPackage }"

#@echo Unprovision unwanted apps
#@powershell -NoProfile -ExecutionPolicy Bypass -Command "$AppList = @('*Microsoft.MicrosoftOfficeHub*', '*Microsoft.BingNews*', '*bingfinance*', '*sports*', '*adobe*', '*Microsoft.DrawboardPDF*', '*facebook*', '*bethesda*', '*farmville*'); foreach ($App in $AppList) { Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like $App} | Remove-AppxProvisionedPackage -Online }"




