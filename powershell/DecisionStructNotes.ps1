#run get-wmiObject cmdlet and store results in a variable
$LogicalDisk = Get-WmiObject -Class Win32_LogicalDisk |
select deviceID, freeSpace, Size, Availability |
? deviceID -EQ "C:"

#extract $LogicalDisk property values and place in variables
$FS = $LogicalDisk.freeSpace
$S = $LogicalDisk.size
$D = $LogicalDisk.deviceID

#use variables to calculate % capacity
$PercOfCap = ($FS/$S) * 100

#We will use this calculation to see how various
#decision structures work

#Example of if statement
#one outcome for one test
if($PercOfCap -lt 20)
{
    write-host "You are low on space on drive: $D"
}

#if/else 
# use this for either/or logic on one test
if($PercOfCap -lt 20)
{
    write-host "You are low on space on drive: $D"
}
else
{
    write-host "You have enough space on drive: $D"
}

#if/elseif
#use this when you evaluate a variable/condition 2 or more times
if($PercOfCap -gt 80)
{
    write-host "You have tonnes of space on drive: $D"
}
elseif($PercOfCap -gt 50)
{
    write-host "You over half capacity left on drive: $D"
}
elseif($PercOfCap -gt 20)
{
    
    write-host "You are low on space on drive: $D"
}
else
{
    write-host "Better start clean-up on drive: $D"
}

