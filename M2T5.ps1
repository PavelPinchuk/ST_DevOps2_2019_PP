1) Get-WmiObject -Class Win32_operatingsystem -Credential $cred -ComputerName 10.0.0.1,10.0.0.2 | Invoke-WmiMethod -Name Reboot
2) $cr = Get-Credential home\Administrator
Get-WmiObject win32_service -ComputerName 10.0.0.1 -Credential $cr |
 Where-Object {$_.state -eq 'Running'} | Format-Table -Property Name, Status, State
3) Enable-PSRemoting
4) Set-Item WSMan:\localhost\Service\EnableCompatibilityHttpListener $true
Set-Item WSMan:\localhost\Service\EnableCompatibilityHttpsListener $true
Set-Item WSMan:\localhost\listener\listener*\port -Value 42658
Enter-PSSession 10.0.0.1 -Port 42658
5) New-PSSessionConfigurationFile -Path c:\M2T2_PINCHUK\TestSessionConfiguration.pssc -VisibleCmdlets Get-ChildItem
Test-PSSessionConfigurationFile c:\M2T2_PINCHUK\TestSessionConfiguration.pssc
Register-PSSessionConfiguration -Name TestSessionConfiguration -Path c:\M2T2_PINCHUK\TestSessionConfiguration.pssc -RunAsCredential
New-PSSession -ComputerName 10.0.0.1 -ConfigurationName TestSessionConfiguration 