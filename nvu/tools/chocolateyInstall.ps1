Install-ChocolateyZipPackage 'nvu' 'http://ddl-games.cu.cc/chocolatey/Nvu.1.0.zip' "${Env:ProgramFiles(x86)}"
$wshShellObject = New-Object -com WScript.Shell
$userProfileFolder = (get-childitem env:USERPROFILE).Value
$programFilesFolder = "${Env:ProgramFiles(x86)}"
$wshShellLink = $wshShellObject.CreateShortcut($userProfileFolder+"\Desktop\Nvu.lnk")
$wshShellLink.TargetPath = $programFilesFolder+"\Nvu\nvu.exe"
$wshShellLink.WindowStyle = 1
$wshShellLink.IconLocation = $programFilesFolder+"\Nvu\nvu.exe"
$wshShellLink.WorkingDirectory = $programFilesFolder+"\Nvu\"
$wshShellLink.Save()