
#an assembly is the building blocks of .NET. An assembly is a collection of 
#types and resources that are built to work together and form a logical unit 
#of functionality.the [void] suppresses some information message from appearing 
#on the screen
[void][system.reflection.assembly]::loadwithpartialname("System.Windows.Forms")

function ClearData
{
	$objTextBox.clear()
	$richTextBox1.clear()
}

Function CPUInfo 
{
    $propertyList = "Caption", "CPUStatus", "CurrentClockSpeed", "DeviceID","L2CacheSize", "L2CacheSpeed", "Name", "SystemName"

	$strComputer = $objTextBox.text
	$colItems = Get-WmiObject Win32_Processor -cn $strComputer |select $propertyList
    $richTextBox1.Appendtext("————————CPU Info ————————-"+"`r")
	$richTextBox1.Appendtext("Computer Name: "+ $strComputer+"`r")
    $richTextBox1.Appendtext("Caption: "+ $colItems.Caption+"`r")
	$richTextBox1.Appendtext("CPU Status: "+ $colItems.CpuStatus+"`r")
	$richTextBox1.Appendtext("Current Clock Speed: "+ $colItems.CurrentClockSpeed+"`r")
	$richTextBox1.Appendtext("Device ID: "+ $colItems.DeviceID+"`r")
	$richTextBox1.Appendtext("L2 Cache Size: "+ $colItems.L2CacheSize+"`r")
	$richTextBox1.Appendtext("L2 Cache Speed: "+ $colItems.L2CacheSpeed+"`r")
	$richTextBox1.Appendtext("Name: "+ $colItems.Name+"`r")
	$richTextBox1.Appendtext("System Name:" + $colItems.SystemName+"`r")        
	
}



#Form Control
$form1 = New-Object System.Windows.Forms.Form
$form1.Text = "WMIObject DEMO"
$form1.StartPosition = "CenterScreen"
$form1.ClientSize = "600,400"
#$form1.MinimizeBox = $False
#$form1.MaximizeBox = $False

#build label
$compLabel = New-Object System.Windows.Forms.Label
$compLabel.Text = "Computer Name:"
$compLabel.Size = New-Object System.Drawing.size(150,40)
$compLabel.Location = New-Object System.Drawing.size(10,10)
$form1.Controls.Add($compLabel)

#Text Box Control
$objTextBox = New-Object System.Windows.Forms.TextBox
$objTextBox.Location = New-Object System.Drawing.Size(160,10)
$objTextBox.Size = New-Object System.Drawing.Size(300,40)
$form1.Controls.Add($objTextBox)


#CPU Button Control
$CPUButton = New-Object System.Windows.Forms.Button
$CPUButton.Location = New-Object System.Drawing.Size(500,10)
$CPUButton.Size = New-Object System.Drawing.Size(90,30)
$CPUButton.Text = "CPU Info"
$CPUButton.Add_Click({CPUInfo})
$form1.Controls.Add($CPUButton)


#CLEAR Button Control
$ClearButton = New-Object System.Windows.Forms.Button
$ClearButton.Location = New-Object System.Drawing.Size(500,50)
$ClearButton.Size = New-Object System.Drawing.Size(90,30)
$ClearButton.Text = "Clear"
$ClearButton.Add_Click({ClearData})
$form1.Controls.Add($ClearButton)

#Rich Text Box Control
$richTextBox1 = New-Object System.Windows.Forms.RichTextBox
$richTextBox1.Location = New-Object System.Drawing.Size(10,50)
$richTextBox1.Size = New-Object System.Drawing.Size(450,300)
$richTextBox1.font = "Courier New"
$form1.Controls.Add($richTextBox1)

$form1.ShowDialog()
