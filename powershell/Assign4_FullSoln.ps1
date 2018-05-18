cls
#set read and write file paths
$readpath = "$env:USERPROFILE\Desktop\employeeList.txt"
$writepath = "$env:USERPROFILE\Desktop\emailAccounts.txt"

#import csv, sort it
$list = Import-Csv $readpath
$list = $list | sort last, first

#make a temp array to hold values that will be written to the outfile
$tempArray = @()

#start header for email file -force will start the overwrite
"Email_Accounts"|out-file $writepath -force


#this function will look for email accounts that
#are already in the temp array
function findNames($n,$temp)
{
   #count how many items match the firstInitLastName value in array
   #and return the number of matches
   $measure = $temp|Where-Object {$_ -like "*$n*"}|measure-object
   return $measure.Count
}

#loop through input file contents
foreach($person in $list)
{
   #format name firstInit+FullLastName
   $name = ($person.first.substring(0,1)).toLower() + $person.last
   #pass name off to function that will count how many matches
   #are found in temp array
   $count = findNames $name $tempArray

   #a match of the name was found in the temp array ..
   if($count -gt 0)
   {
    $tempArray+= $name+$count+"@breezeyob.ca" #add count of matches to account name
   }
   else #no match was found
   {
    $tempArray+= $name+"@breezeyob.ca"
   }  
}

#append temp array contents to email account file
$tempArray|out-file $writepath -append



