<#
.SYNOPSIS
This script outputs windows process information
.DESCRIPTION
This script outputs windows process information. It is sorted by 

.NOTES
M. Baddeley
2015-09-24
COMP1268
#>

#Get Process Call - Long Form 
Get-Process|Select-Object @{Name = "ID"; Expression = {$_.Id}}, 
            @{Name = "NAME"; Expression = {$_.ProcessName}},
            @{Name = "WORKING_SET"; Expression = {$_.WS}},
            @{Name = "HANDLE_COUNT"; Expression = {$_.HandleCount}}| 
            Where-Object -Property NAME -like ms* | 
            Sort-Object HANDLE_COUNT -descending

#get Process Call - Aliases
gps|select @{Name = "ID"; Expression = {$_.Id}}, 
            @{Name = "NAME"; Expression = {$_.ProcessName}},
            @{Name = "HANDLE_COUNT"; Expression = {$_.Handles}}| 
            ? NAME -like ms* | 
            sort HANDLE_COUNT -desc


