<#
Get all files in a given folder including subfolders and display a result that shows the total number of files, the total size of all files, the average file size, the computer name, and the date when you ran the command.
#>

$Directory = Read-Host "Which directory would you like to review?"

$Details = Get-ChildItem $Directory -Recurse

$Files = $Details | Where {$_.PSIsContainer -like "False"}
Write-Output "The computer is $($env:COMPUTERNAME)"
Write-Output "The time is $(get-date -DisplayHint Date)"
Write-Output "$($Files.count) files"
$files | % {$size = $size + $_.length}
$TotalSize = ($Size/1MB)
Write-Output "The total size is $TotalSize MB"
$AvgSize = $files.count/$TotalSize
Write-Output "The average file size is $AvgSize MB"