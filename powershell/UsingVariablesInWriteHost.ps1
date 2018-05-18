clear-host
[string]$first = "Marsha"
[char]$mi = "Y"
[string]$last = "Baddeley"
[string]$phone = "9999999999"
[string]$address = "123 Main Street"
[int]$age = 30
[char]$gender = "F"
[datetime]$start = "2000/05/01"
[boolean]$isEmployed = $true
[decimal]$salary = 50000.99

[string]$start = $start.ToLongDateString()

write-host "Name:`t`t$first $mi $last`
            Phone:`t`t$phone`t`t`t`tAddress:`t$address`
            Age:`t`t$age`t`t`t`t`t`tGender:`t`t$gender`
            Start Date:`t$start`t`tActive?:`t$isEmployed`t`t`tSalary: $salary`n"

