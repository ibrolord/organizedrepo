$text =  import-csv C:\computerNames.txt
$results = $text|Where-Object {$_.computer -like "*B1*"}
$results

