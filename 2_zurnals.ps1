$bridinajumi = "$env:USERPROFILE\Documents\Warnings.txt"
$event = Get-EventLog -LogName Application -EntryType Warning -after (Get-date).AddDays(-3)
$event | out-file $bridinajumi
$top = $event | Group-object Source | sort-object count -descending | select-object -First 3
Add-Content $bridinajumi "top 3 avoti:" $top | ForEach-object {add-content $bridinajumi "$($_.Name) - $($_.Count)"}