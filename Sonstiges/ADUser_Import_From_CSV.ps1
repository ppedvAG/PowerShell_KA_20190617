import-csv .\BulkAddADUsers.csv | % {
    New-ADUser  -GivenName $_.GivenName 
                -Surname $_.Surname 
                -Name $_.Name 
                -SamAccountName $_.SamAccountName 
                -Description $_.Description 
                -Department $_.Department 
                -EmployeeID $_.EmployeeID 
                -Path $_.Path 
                -Enabled $True 
                -AccountPassword 
                    (ConvertTo-SecureString $_.Password 
                    -AsPlainText -force) 
                -PasswordNeverExpires $True
}
