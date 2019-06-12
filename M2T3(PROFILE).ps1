function profile
{
'MyProfile'
}
Set-location c:\
new-Variable a -value 2019
set-Alias c clear
set-Alias gm get-member
 (Get-Host).UI.RawUI.ForegroundColor = 'red'
 (Get-Host).UI.RawUI.BackgroundColor = 'black'
Clear-Host
Get-Module -ListAvailable
