$habuba = "$env:USERPROFILE\Documents\Serveri.log"
$server = @("Spooler","wuauserv")
$laiks = get-date -format "dd-mm-yyyy hh:mm:ss"
foreach ($nosaukums in $server){$aha = get-service -name $nosaukums | group-object  
$rinda = "$laiks serviss $nosaukums ir $($aha.status)."
add-content -path $habuba -value $rinda}
