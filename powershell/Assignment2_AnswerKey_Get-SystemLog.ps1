<#
.SYNOPSIS
This script outputs Top 5 Event Log Entries
.DESCRIPTION
This script outputs Top 5 Event Log Entries

.NOTES
M. Baddeley
2015-09-30
COMP1268
#>


Clear-Host

[Datetime]$Today = Get-Date -uformat "%Y-%m-%d"
$SelectedDate = $Today.AddDays(-7)

Write-Host "Report By:" $env:USERNAME "for date starting ("$SelectedDate.ToShortDateString() ")"

#System Log Summary Report
Write-Host "`n*******************************"
Write-Host "Top 5 System Log Summary Report"
Write-Host "*******************************"
Get-EventLog system -after $SelectedDate | Group-Object source | sort count -descending | select count, name -first 5 | Format-Table -autosize


#System Log ERROR Summary
Write-Host "`n`n*****************************"
Write-Host "Top 5 System Log ERROR Report"
Write-Host "*****************************"
Get-EventLog system -entrytype error -after $SelectedDate | Group-Object source | sort count -descending | select count, name -first 5 | Format-Table -autosize


#System Log WARNING Summary
Write-Host "`n`n*******************************"
Write-Host "Top 5 System Log WARNING Report"
Write-Host "*******************************"
Get-EventLog system -entrytype warning -after $SelectedDate | Group-Object source | sort count -descending | select count, name -first 5 | Format-Table -autosize