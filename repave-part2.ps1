
#chrome extensions:
# dev tools
# last pass
# multiple accounts: David, Readify, DDD


#Seq
#Visual Studio
#Microsoft Office?
#Azure Storage Explorer
#sql-server-management-studio postman fiddler4 microsoftazurestorageexplorer nodejs cmder jq jetbrainstoolbox docker-toolbox

#Install Visual Studio 2017 and the workloads for Azure and Web Development
# To use another version of Visual Studio uncomment the line as appropriate

#Community edition
#choco install -y --allow-empty-checksums visualstudio2017community

#Professional edition
#choco install -y --allow-empty-checksums visualstudio2017professional

#Install enterprise edition of Visual Studio 2017
choco install -y --allow-empty-checksums visualstudio2017enterprise 

# dev folders
#cd /
#mkdir Dev
#cd Dev
#mkdir engagements
#mkdir personal
#cd personal
#mkdir ddd

# windows explorer options
$key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
if (($key | Get-ItemProperty -Name "Hidden").Hidden -ne 1){
    Set-ItemProperty $key Hidden 1
    Set-ItemProperty $key HideFileExt 0
    Set-ItemProperty $key ShowSuperHidden 1
    Stop-Process -processname explorer
}

#pin taskbar items
$path = "C:\Program Files (x86)\Google\Chrome\Application"
$exe = "chrome.exe"

if (Test-Path "$path\$exe"){
    $shell = New-Object -com "Shell.Application"
    $folder = $shell.Namespace($path)
    $item = $folder.Parsename($exe)
    $item.invokeverb("taskbarpin")
}





