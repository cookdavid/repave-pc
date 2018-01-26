Set-ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
refreshenv
choco feature enable -n allowGlobalConfirmation

choco install -y --allow-empty-checksums git GoogleChrome

# VS Code Extensions
# ------------------

# C#
code --install-extension ms-vscode.csharp

#Powershell
code --install-extension ms-vscode.Powershell

# Debugger for chrome
code --install-extension msjsdiag.debugger-for-chrome

# Markdown theme kit
code --install-extension ms-vscode.Theme-MarkdownKit

# Rest client
code --install-extension humao.rest-client


# DEV Tools
# ---------
choco install -y --allow-empty-checksums gitextensions beyondcompare

choco install -y --allow-empty-checksums resharper-ultimate-all linqpad


# General Apps
# ------------
choco install -y --allow-empty-checksums slack microsoft-teams skype spotify

choco install -y --allow-empty-checksums 7zip dropbox greenshot

choco install -y --allow-empty-checksums lastpass

choco install -y --allow-empty-checksums foxitreader '/MERGETASKS="!desktopicon,setdefaultreader,!displayinbrowser"'

#paint.net




