New-Item -Path 'C:\Test\TrueLayer' -ItemType directory
#date-time
$(Get-Date) | out-file 'C:\Test\TrueLayer\TLTest.txt'

#Script Name
$MyInvocation.MyCommand | out-file 'C:\Test\TrueLayer\TLTest.txt' -Append

#user
"$env:userdomain $env:username" | out-file 'C:\Test\TrueLayer\TLTest.txt' -Append

#pid
$pid | out-file 'C:\Test\TrueLayer\TLTest.txt' -Append

#RAM
(Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum | Out-File 'C:\Test\TrueLayer\TLTest.txt'  -Append
(Get-WmiObject -class "Win32_PhysicalMemoryArray").MaxCapacity | Out-File 'C:\Test\TrueLayer\TLTest.txt' -Append

#IP
(Invoke-WebRequest -uri "http://ifconfig.me/ip").Content | Out-File 'C:\Test\TrueLayer\TLTest.txt' -Append 

#List files and folders
Get-ChildItem -Recurse 'C:\Test' | Out-File 'C:\Test\TrueLayer\TLTest.txt' -Append

#Comment with a comma
"This is your comment, to show proof with a comma" | Out-File 'C:\Test\TrueLayer\TLTest.txt' -Append
