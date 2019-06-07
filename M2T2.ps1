1) cd HKCU:\
get-childitem
2) new-item -path E:\Folder -itemtype "directory"
remove-team -path E:\Folder -Recurse
rename-item -path E:\Folder -newname Folder2
3)new-item -path C:\M2T2_PINCHUK -itemtype "directory"
new-psdrive -name T -psprovider FileSystem -root C:\M2T2_PINCHUK
4)cd C:\M2T2_PINCHUK
$g = get-service
$g | out-file service.txt
get-childitem
get-content -path C:\M2T2_PINCHUK\service.txt
5) $r = Get-Variable | ? -FilterScript {$_.Value.GetType() -like 'int*'}
	$r | % {$sum += $_.value}
	$sum 
6) Get-Process | Sort-Object -Property cpu - descending
7)Get-process | ConvertTo-Html -Property ProcessName, VM | Foreach { 
If ($_.VM -lt 100) {$_ -Replace "<tr>", "<tr bgcolor=green>"}
else {$_ -Replace "<tr>", "<tr bgcolor=red>"}} | Out-File c:\S1.html 
8) $FolderSize = Get-ChildItem C:\windows -exclude "*.tmp" -Recurse | measure -Property length -Sum
;
>> "{0:N2}" -f $($FolderSize.Sum/1MB) +"MB"
9) cd HKLM:\SOFTWARE\Microsoft
	 Select-Object Name,Path,Company | Export-Csv -path test.csv
10) $a = Get-history
	$a| Select-Object Id, Name | Export-CliXML -path test.xml
12) remove-item -path C:\M2T2_PINCHUK


