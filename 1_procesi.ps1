$Arhivs = "$env:USERPROFILE\Documents"
Get-Process | where-object {$_.WorkingSet -gt 157286400 -and -notlike $_.ProcessName "msedge"}  | Export-csv "LielieProcesi.csv"
