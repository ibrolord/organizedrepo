#starting variables
cls
$countDown = 10
$timeInc = 2


#loop while countdown gt 0
do
{ 
   
    #cls
    write-host "Shutting down in $countDown seconds"
    #subtract seconds from countdown 
    $countDown -= $timeInc
    Start-Sleep -s $timeInc
    
}while($countDown -gt 0)