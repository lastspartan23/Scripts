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
[string] ((test-connection -Count 1 $env:computername).IPV4Address) | Out-File 'C:\Test\TrueLayer\TLTest.txt' -Append

#List files and folders
Get-ChildItem -Recurse 'C:\Test' | Out-File 'C:\Test\TrueLayer\TLTest.txt' -Append

