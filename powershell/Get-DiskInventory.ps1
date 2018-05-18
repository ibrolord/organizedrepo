<#
.SYNOPSIS
	Get-DiskInventory retrieves logical disk information from one or
	more computers. This was taken from pp.262-263 of your textbook.
.DESCRIPTION
	Get-DiskInventory uses WMI to retrieve the Win32_LogicalDisk
	instances from one or more computers. It displays each disk's
	drive letter, free space, total size, and percentage of free
	space.
.PARAMETER computername
	The computer name, or names, to query. Default: Localhost.
.PARAMETER drivetype
	The drive type to query. See Win32_LogicalDisk documentation
	for values. 3 is a fixed disk, and is the default.
.EXAMPLE
    Get-WmiObject -Class win32_LogicalDisk -ComputerName localhost | ? driveType -EQ 3
	
#>


