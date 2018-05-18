[void][system.reflection.assembly]::loadwithpartialname("System.Windows.Forms")

function getService()
{


       
 }

function clearText()
{
    $richTextBox1.clear()
}


#build form
$myForm = New-Object System.Windows.Forms.Form
$myForm.ClientSize = "600,420"
$myForm.Text = "Event Log Demo"
$myForm.StartPosition = "CenterScreen"
$myForm.MinimizeBox = $False
$myForm.MaximizeBox = $False
$Font = New-Object System.Drawing.Font("Tahoma",12)
$myForm.Font = $Font

#build label
$textLabel = New-Object System.Windows.Forms.Label
$textLabel.Text = "Service:"
$textLabel.Size = New-Object System.Drawing.size(100,40)
$textLabel.Location = New-Object System.Drawing.size(10,10)

#build textbox
$txtServiceName = New-Object System.Windows.Forms.TextBox
$txtServiceName.Size = New-Object System.Drawing.size(400,60)
$txtServiceName.Location = New-Object System.Drawing.size(120,10)


#Rich Text Box Control
$richTextBox1 = New-Object System.Windows.Forms.RichTextBox
$richTextBox1.Location = New-Object System.Drawing.Size(10,120)
$richTextBox1.Size = New-Object System.Drawing.Size(520,290)


#build button
$btnGO = New-Object System.Windows.Forms.Button
$btnGO.Text = "GO"
$btnGO.Size = New-Object System.Drawing.size(80,30)
$btnGO.Location = New-Object System.Drawing.size(330,60)
$btnGO.Add_Click({getService})

#build button2
$btnClear = New-Object System.Windows.Forms.Button
$btnClear.Text = "CLEAR"
$btnClear.Size = New-Object System.Drawing.size(100,30)
$btnClear.Location = New-Object System.Drawing.size(420,60)
$btnClear.Add_Click({clearText})

#Add controls to form
$myForm.Controls.Add($textLabel)
$myForm.Controls.Add($txtServiceName)
$myForm.Controls.Add($btnGO)
$myForm.Controls.Add($btnClear)
$myForm.Controls.Add($richTextBox1)


cls

$myForm.ShowDialog()

