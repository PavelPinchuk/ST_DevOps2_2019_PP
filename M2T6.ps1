1) Get-WmiObject -Class win32_networkadapterconfiguration -filter IPenabled=True | 
Select-Object -Property  ipaddress, description, ipsubnet
2) Get-WmiObject -Class win32_networkadapterconfiguration -filter IPenabled=True | 
Select-Object -Property description, macaddress

3) Get-WmiObject -Class Win32_NetworkAdapterConfiguration -filter IPEnabled=true -ComputerName 10.0.0.1 |
 ForEach-Object -Process {$_.InvokeMethod("EnableDHCP", $null)}

4) New-SmbShare -Name 'Share' -path 'c:\M2T2_PINCHUK\Share' -ContinuouslyAvailable -FullAccess 'home\Administrator' -ReadAccess 'home\GuestUsers'
5) Remove-SmbShare -Name Share -Force
6) Get-Command -Module Hyper-V
7) Get-VM | Format-List
<#
Name             : PINCHUK_VM1
State            : Off
CpuUsage         : 0
MemoryAssigned   : 0
MemoryDemand     : 0
MemoryStatus     :
Uptime           : 00:00:00
Status           : Работает нормально
ReplicationState : Disabled
Generation       : 1

Name             : PINCHUK_VM2
State            : Off
CpuUsage         : 0
MemoryAssigned   : 0
MemoryDemand     : 0
MemoryStatus     :
Uptime           : 00:00:00
Status           : Работает нормально
ReplicationState : Disabled
Generation       : 1

Name             : PINCHUK_VM3
State            : Off
CpuUsage         : 0
MemoryAssigned   : 0
MemoryDemand     : 0
MemoryStatus     :
Uptime           : 00:00:00
Status           : Работает нормально
ReplicationState : Disabled
Generation       : 1
#>
8) Get-VM | Select-Object Name, State
<#
Name        State
----        -----
PINCHUK_VM1   Off
PINCHUK_VM2   Off
PINCHUK_VM3   Off
#>
9) Get-VM -Name pavlovsky_vm2 | Stop-VM 
10) New-vm -Name PINCHUK_VM4 -Generation 2 -Path 'C:\M2T2_PINCHUK\VMP' -MemoryStartupBytes 2GB -NewVHDPath 'C:\M2T2_PINCHUK\VHD' -NewVHDSizeBytes 64GB -SwitchName 'Private'
11) New-VHD -Path 'C:\M2T2_PINCHUK\VHD\pnck.vhdx' -SizeBytes 64GB -Dynamic
<#
ComputerName            : PINCHUK_VM4
Path                    : C:\M2T2_PINCHUK\VHD\pnck.vhdx
VhdFormat               : VHDX
VhdType                 : Dynamic
FileSize                : 4194304
Size                    : 68719476736
MinimumSize             :
LogicalSectorSize       : 512
PhysicalSectorSize      : 4096
BlockSize               : 33554432
ParentPath              :
DiskIdentifier          : 7514BCAC-A50C-4FEB-A4FD-19BD83BA590A
FragmentationPercentage : 0
Alignment               : 1
Attached                : False
DiskNumber              :
Number                  :
#>
12) Get-VM -Name PINCHUK_VM4 | Remove-VM