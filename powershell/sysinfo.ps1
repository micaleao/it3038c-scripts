function getIP {
    (Get-NetIPAddress).IPv4Address | Select-String "192*"
}
function PSV {
    (Get-Host).Version | Select-String "5*"
}

$IP = getIP
$USER = $env:USERNAME
$Ht = $env:COMPUTERNAME
$PSV = PSV
$Date = Get-Date

$BODY = "This machine's IP is $IP. User is $USER. Hostname is $Ht. Powershell version $PSV. Today's date is $Date." 

#Send-MailMessage -To "botheaj@ucmail.uc.edu" -From "amicale812@gmail.com" -Subject "IT3038c" -Body $BODY -SmtpServer smtp.gmail.com -Port 587 -UseSsl -Credential (Get-Credential)