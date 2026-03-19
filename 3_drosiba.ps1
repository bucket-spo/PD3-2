$status = get-MpComputerStatus
$bulba = 100
if(-not $staus.realTimeProtectionEnabled){$bulba -= 50}
if($status.AntivirusSignatureAge -gt 3){$bulba -= 20}
if($status.QuickScanAge -gt 7){$bulba -= 20}
Write-output "Sistēmas drošības reitings: $bulba / 100 "