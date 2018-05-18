[void][system.reflection.assembly]::loadwithpartialname("System.Windows.Forms")
 $msgBox = [System.Windows.Forms.MessageBox]

function Dir(){
    $seek = $cboDir.SelectedItem
    $seek1 = $cboDir.Text

   $dir = gci "C:\Users\Administrator\$seek" -File #List only files

#$desk = $cboDir.Items.Add("Desktop") = $cboDir.Text
#$doc = $cboDir.Items.Add("Documents")
#$dow = $cboDir.Items.Add("Downloads")

$cboDir.Items.Clear()

    if($seek1 -like "Desktop"){
      gci 'C:\Users\Administrator\Desktop' -File #List only files
    }
    
    elseif($seek1 -like "Documents"){
       gci 'C:\Users\Administrator\Documents' -File
    }
    
    else{
       gci 'C:\Users\Administrator\Downloads' -File 
    }



   $dir = gci "C:\Users\Administrator\$seek" -File
      
    foreach($i in $dir){
        $listbox.Items.Add($i.Name)
    }
}

function msg(){

$listbox.Items.Clear()
   $sel = $listbox.SelectedItem
if($sel -gt 0){
    $msgbox::show('Select a file', 'Information','OK', 'Warning')
    }

    else{
    $OUTPUT= $msgbox::Show("Are you sure you want to delete file" , "Status" , 4) 
if ($OUTPUT -eq "YES" ) 
{
    Remove-Item 
    
} 
else 
{ 
 break;
} 
    }
}

#build form
$myForm = New-Object System.Windows.Forms.Form
$myForm.ClientSize = "500,350"
$myForm.Text = "TEST 3"
$myForm.StartPosition = "CenterScreen"
$myForm.MinimizeBox = $False
$myForm.MaximizeBox = $False
$Font = New-Object System.Drawing.Font("Tahoma",10)
$myForm.Font = $Font

#build directory label
$dirLabel = New-Object System.Windows.Forms.Label
$dirLabel.Text = "Choose Dir"
$dirLabel.Size = New-Object System.Drawing.size(100,40)
$dirLabel.Location = New-Object System.Drawing.size(5,15)

#build directory dropdown
$cboDir = new-object System.Windows.Forms.combobox
$cboDir.size = new-object system.drawing.size(310,40)
$cboDir.location = New-Object System.Drawing.Size(130,10)
#static drop
$cboDir.Items.Add("Desktop")
$cboDir.Items.Add("Documents")
$cboDir.Items.Add("Downloads")
#selected index
$cboDir.Add_SelectedIndexChanged({Dir})
$cboDir.Add_Click({Dir})

#build stop process button
$btnDelete = New-Object System.Windows.Forms.Button
$btnDelete.Text = "Delete"
$btnDelete.Size = New-Object System.Drawing.size(100,25)
$btnDelete.Location = New-Object System.Drawing.size(340,270)
#event
$btnDelete.Add_Click({msg})


#build listbox
$listbox = New-Object System.Windows.Forms.listbox
$listbox.Size = New-Object System.Drawing.size(310,200)
$listbox.Location = New-Object System.Drawing.size(130,60)
$listbox.Sorted = $true
#
#selected index
#$listbox.Add_SelectedIndexChanged({Dir})


#Add controls to form
$myForm.Controls.Add($dirLabel)
$myform.controls.add($cboDir)
$myform.controls.add($listbox)
$myform.controls.add($btnDelete)
#Load
$myForm.Add_Load({Dir})

#OK button


cls

$myForm.ShowDialog()
