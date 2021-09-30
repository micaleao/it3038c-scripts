## This script shows the amount of free disk space available in bytes and GB
function getDisk{
    fsutil volume diskfree c: | Select-String "Total free bytes*"
}
$disk1 = getDisk

write-output "The amount of available disk space is $disk1"

