
$bumba = Get-Process | where-object {$_.WorkingSet -gt 157286400 -and $_.Name -ne "msedge"}
$bumba | select-object Name, Id, workingSet | Export-csv "$env:USERPROFILE\Documents\LielieProcesi.csv" -NoTypeInformation -encoding UTF8
