Install-ChocolateyZipPackage 'nfopad' 'http://ddl-games.cu.cc/chocolatey/NFOPad.1.6.8.zip' "${Env:ProgramFiles(x86)}"
$wshShellObject = New-Object -com WScript.Shell
$userProfileFolder = (get-childitem env:USERPROFILE).Value
$programFilesFolder = "${Env:ProgramFiles(x86)}"
$wshShellLink = $wshShellObject.CreateShortcut($userProfileFolder+"\Desktop\NFOPad.lnk")
$wshShellLink.TargetPath = $programFilesFolder+"\NFOPad\NFOPad.exe"
$wshShellLink.WindowStyle = 1
$wshShellLink.IconLocation = $programFilesFolder+"\NFOPad\NFOPad.exe"
$wshShellLink.WorkingDirectory = $programFilesFolder+"\NFOPad\"
$wshShellLink.Save()