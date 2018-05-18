cls
function fixFileName($s)
{    
    $invalidChars = '\','/',':','*','?', '"', '<', '>', '|'
    $foundError = $false

    foreach($char in $invalidChars)
    {
       if($s.contains($char))
       {
            $foundError = $true
            $s = $s.replace($char,"")
       }            
    }    
    if($foundError -eq $true)
    {
        return $s   
    }
    else
    {
        return $foundError
    }
}

#$file = 'This/Is\Test:File*?"<>|.docx'
$file = 'ThisIsTestFile.docx'

$file = fixFileName $file

write-host $file

