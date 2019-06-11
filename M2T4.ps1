1) get-wmiobject -list
2) Get-WmiObject -List -ComputerName 127.0.01 -Namespace root
3) Get-WmiObject -Class Win32_Printer
4) $s = Get-CimInstance -ClassName Win32_OperatingSystem
   $s | fl Caption, Version, BuildTime, BuildNumber, InstallDate
5) Get-CimInstance -ClassName Win32_BIOS
6) get-WmiObject win32_logicaldisk
   get-WmiObject win32_logicaldisk | measure -sum freespace
7) Get-WmiObject Win32_PingStatus -Filter "address='127.0.0.1'" | Select-Object -Property address,responsetime
8) Get-WmiObject Win32_InstalledWin32Program | Select-Object vendor, version | ft
9)Register-WMIEvent -Query "SELECT * FROM __InstanceCreationEvent WITHIN 5 WHERE TargetInstance ISA 'Win32_Process' AND TargetInstance.Name = 'winword.exe'"  -sourceIdentifier 'MSWordStarted' -action {Write-Host 'WORD STARTED'}
