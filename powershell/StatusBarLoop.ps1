#initial play with timer
cls

for($i=10; $i -gt 0; $i-=2)
{
    write-host "Shutting down in $i seconds"
    Start-Sleep -s 2
    cls
     
}


#timer with progess bar
cls
$TIMELIMIT =10
$timeInt = 2
$totTime = 0

#loop while countdown gt 0
for($i = $TIMELIMIT; $i -gt 0; $i -= $timeInt)
{

    #get percent complete
    $perc = ($totTime/$TIMELIMIT) * 100 
    
    #add up how long we have been running
    $totTime += $timeInt  

    #output to status bar
    write-progress -Activity "Shut Down" -Status "In $i seconds" -PercentComplete $perc
    Start-Sleep -s $timeInt
    
}