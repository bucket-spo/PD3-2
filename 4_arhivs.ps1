$source = "$env:USERPROFILE\Downloads"
$dest = "$env:USERPROFILE\Documents\PDF_backup.zip"
$files = get-childitem $source -filter *.pdf | where-object {$_.LastWriteTime -gt (Get-date).addHours(-48)}
Compress-archive -path $files.FullName -destinationPath $dest -Force