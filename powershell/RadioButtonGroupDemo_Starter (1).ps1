[void][system.reflection.assembly]::loadwithpartialname("System.Windows.Forms")

function getEventLog()
{
    <#$logs = Get-EventLog -LogName $logName -Newest 10
    $richTextBox1.clear()

    foreach($item in $logs)
    {
        
        $richTextBox1.AppendText("Time Generated: "+$item.TimeGenerated+"`r")        
        $richTextBox1.AppendText($item.Message) 
        $richTextBox1.AppendText("`n***************************************************************`n")
    }   #>
}

#build form
$myForm = New-Object System.Windows.Forms.Form
$myForm.ClientSize = "650,500"
$myForm.Text = "Radio Button Demo"
$myForm.StartPosition = "CenterScreen"
$myForm.MinimizeBox = $False
$myForm.MaximizeBox = $False
$Font = New-Object System.Drawing.Font("Tahoma",12)
$myForm.Font = $Font

#build radio button - for app
$radApplication = New-Object System.Windows.Forms.RadioButton
$radApplication.size = New-Object System.Drawing.Size (180, 40)
$radApplication.location = New-Object System.Drawing.Size (20, 30)
$radApplication.Text = "Application"

#build radio button - for security
$radSecurity = New-Object System.Windows.Forms.RadioButton
$radSecurity.size = New-Object System.Drawing.Size (180, 40)
$radSecurity.location = New-Object System.Drawing.Size (20, 80)
$radSecurity.Text = "Security"


#build radio button - for system
$radSystem = New-Object System.Windows.Forms.RadioButton
$radSystem.size = New-Object System.Drawing.Size (180, 40)
$radSystem.location = New-Object System.Drawing.Size (20, 130)
$radSystem.Text = "System"

#build radio button - for textfile output
$radSendToFile = New-Object System.Windows.Forms.RadioButton
$radSendToFile.size = New-Object System.Drawing.Size (180, 40)
$radSendToFile.location = New-Object System.Drawing.Size (350, 30)
$radSendToFile.Text = "Send to Textfile"

#build radio button - for richbox outut
$radRichText = New-Object System.Windows.Forms.RadioButton
$radRichText.size = New-Object System.Drawing.Size (200, 50)
$radRichText.location = New-Object System.Drawing.Size (350, 80)
$radRichText.Text = "Send to Form"

#build button
$btnGo = New-Object System.Windows.Forms.button
$btnGo.size = New-Object System.Drawing.Size (60, 40)
$btnGo.location = New-Object System.Drawing.Size (550, 430)
$btnGo.Text = "GO"
$btnGo.add_click({getEventLog})

#Rich Text Box Control
$richTextBox1 = New-Object System.Windows.Forms.RichTextBox
$richTextBox1.Location = New-Object System.Drawing.Size(10,220)
$richTextBox1.Size = New-Object System.Drawing.Size(600,200)

$myForm.controls.add($btnGo)
$myForm.controls.add($richTextBox1)
$myForm.controls.add($radApplication)
$myForm.controls.add($radSecurity)
$myForm.controls.add($radSystem)
$myForm.controls.add($radSendToFile)
$myForm.controls.add($radRichText)

$myForm.ShowDialog()
