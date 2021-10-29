Set-PoshPrompt -Theme ys
Import-Module -Name Terminal-Icons

#oh-my-posh --init --shell pwsh --config C:\Users\alessandro\configposh.json| Invoke-Expression

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Alias IP Pubblico
function getpublicip {
	Invoke-RestMethod -Uri ('http://ipinfo.io/'+(Invoke-WebRequest -uri "http://ifconfig.me/ip").Content)
}
# Alias per spawnare shell admin
function runasadmin {
  powershell -Command "Start-Process wt -Verb RunAs"
}

Set-Alias ip getpublicip
Set-Alias elevate runasadmin
