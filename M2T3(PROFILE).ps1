function profile
{
'MyProfile'
}
Set-location c:\
Get-Alias c clear
Get-Alias gm get-member
New-Variable a -value 2019
 (Get-Host).UI.RawUI.ForegroundColor = 'red'
 (Get-Host).UI.RawUI.BackgroundColor = 'black'
 (Get-Host).UI.RawUI.CursorSize = 17
Clear-Host
Get-Module -ListAvailable