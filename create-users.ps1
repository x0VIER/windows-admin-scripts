Import-Csv users.csv | ForEach-Object {
    New-LocalUser -Name $_.Username -Password (ConvertTo-SecureString $_.Password -AsPlainText -Force)
    Add-LocalGroupMember -Group "Users" -Member $_.Username
}
