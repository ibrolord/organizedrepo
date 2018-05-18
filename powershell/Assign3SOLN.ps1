    param
    (
        $path="C:\Windows",
        $ext = "ini"
    )
    
    cls
    sl $path
   
   $files = Get-ChildItem|? name -like *$ext |Measure-Object length -sum 
   $numFiles =$files.Count
   $length = $files.Sum
   $ext = $ext.ToUpper()

   if($length -ge 1MB)
    {
        $length = "{0:N2}" -f ($length/1MB) + " MB"
    }
    elseif($length -ge 1KB)
    {
        $length = "{0:N2}" -f ($length/1KB) + " KB"
    }
    else
    {
        $length =  "{0:N2}" -f $length + " Bytes"
    }
    
   
   write-host "$ext Files found in:`t`t`t$path`nTotal # $ext files:`t`t`t$numFiles`nTotal of $ext file lengths:`t$length"

