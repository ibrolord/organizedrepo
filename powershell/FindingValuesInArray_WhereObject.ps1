$strNames = "Sam", "Sally", "Fred", "Margaret", "Jimmy"
$strSearchChar = "m"
cls
$names = $strNames|where-object{$_ -like "*$strSearchChar*"}
write-host $names