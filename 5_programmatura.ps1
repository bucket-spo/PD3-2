$app = winget list | select-string "msstore"
$cipari = ($app | Measure-Object).count
write-output "Sistēmā ir instalētās $cipari aplikācijas no Microsoft Store."
