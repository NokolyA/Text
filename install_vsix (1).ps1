param (
   [Parameter(Mandatory=$true)][string]$vsixPath
)

$codeCmdFilePath = "C:\Program Files\VSCodium\bin\codium.cmd"
$vsCodeExtensionsDir = "C:\Program Files\VSCodium\resources\app\extensions"

$localfile = copy-item -Path $vsixPath -Destination ($env:TEMP + "") -Force -PassThru
$args = @("/c", ('""' + $codeCmdFilePath + '" --install-extension "' + $localfile.fullname + '" --extensions-dir "' + $vsCodeExtensionsDir + '"'))
write-host ("cmd.exe" + " " + ($args -join " "))
Start-Process -wait -filepath "cmd.exe" -ArgumentList $args