#PowerShell script to launch Winbox
param(
    [string]$url
)


Write-Host $url

Add-Type -AssemblyName System.Web

$url = $url.TrimEnd('/')
if ($url.StartsWith('winbox://')) { $url = $url.SubString(9) }
$url = [System.Web.HttpUtility]::UrlDecode($url)
$split = $url.split(" ")
$winboxargs = $split[0] + ' ' + $split[1] + ' "' + $split[2] + '"'

Start-Process -FilePath "C:\Program Files\winbox\winbox64.exe" -ArgumentList $winboxargs