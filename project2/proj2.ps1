#This script will display the current times for us and some other time zones I selected.
#All Times are presented in military format.
$Date1 = Get-Date -format "dd-MMM-yyy" 
$Time1 = Get-Date -format "HH:mm"
#The below is a line of code I found online but I used the command Get-TimeZone -ListAvailable to see all the available time zones in the system and chose from there.
$Time2 = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId([DateTime]::Now,"Line Islands Standard Time")
$Time3 = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId([DateTime]::Now,"Russia Time Zone 10")
$Time4 = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId([DateTime]::Now,"West Pacific Standard Time")

write-output "Today's date is $Date1 and the time is $Time1.
The current Line Islands Standard Time and date is $Time2.
The current Russia Time Zone 10 date and time is $Time3.
The current West Pacific Standard Time and date is $Time4."