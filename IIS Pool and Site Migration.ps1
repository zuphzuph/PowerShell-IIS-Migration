$source = Read-Host "Source IIS Server with Sites"
$target = Read-Host "Target IIS Server"

$hostsession = New-PSSession -ComputerName $Source 
start-process -filepath C:\Windows\System32\inetsrv\appcmd.exe -argumentlist "list apppool /config /xml > C:\Staging"
Remove-PSSession $hostsession

\\$source\c$\Windows\system32\inetsrv\appcmd.exe list site /config /xml  > C:\Staging

\\$target\Windows\system32\inetsrv\appcmd.exe add apppool /in < C:\Staging\apppools.xml
\\$target\Windows\system32\inetsrv\appcmd.exe add site /in < C:\Staging\websites.xml

Write-Host "Sites Migrated to Target Server Successfully."