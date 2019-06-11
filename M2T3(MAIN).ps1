1)[CmdletBinding()]
Param 
    (
  [parameter(Mandatory=$true, HelpMessage="Enter name .txt file")]
  [string]$SF = $(Throw "Enter name"),
    )
Write-Host ('Test 1 ' + '-' * 10)
Get-Service > $SF
Write-Host ('Test 2 ' + '-' * 10)
Get-ChildItem $OD
Write-Host ('Test 3 ' + '-' * 10)
$test_path = Test-Path -Path $OF
if ($test_path = $True)
    {
    Get-Content -Path $OF
    }
else
    {
    Write-host "File $OF not exist"
    }
}

#-----------------------------------------------------------------------------------------
2)  $s = 0
Get-Variable | ForEach-Object 
    {
        if (($PSitem.Name -ne "null") -and ($PSItem.Value.GetType() -eq [int32]))
        {
        $s=$s + $PSitem.Value
        } 
        else 
        {
        }
    }
$s
}
#------------------------------------------------------------------------------------------
3) $Trigger = New-ScheduledTaskTrigger -Once -At "06/11/2019 10:00" -RepetitionInterval (New-TimeSpan -Minutes 10)
   $Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\M2T2_PINCHUK\TOP10.ps1"
   Register-ScheduledTask -TaskName "TOP10" -Trigger $Trigger -Action $Action -RunLevel Highest –Force


#------------------------------------------------------------------------------------------

4) [CmdletBinding()]
Param 
    (
  [parameter(Mandatory=$true, HelpMessage="Enter Folder name")]
  [string]$F = "c:\windows"
    )
"{0:N2} Gb" -f ((Get-ChildItem –force $F –Recurse -ErrorAction Stop -Exclude *.tmp | Measure-Object Length -Sum).sum / 1Gb) 
}
#-------------------------------------------------------------------------------------------

5) $save = Get-HotFix | Export-Csv C:\M2T2_PINCHUK\ghf.csv
   $save2 = Get-ChildItem HKLM:\SOFTWARE\Microsoft\ | Export-Clixml C:\M2T2_PINCHUK\gci.csv

$rsave = Import-Csv -Path C:\M2T2_PINCHUK\ghf.csv | Format-List
$rsave2 = Import-Clixml C:\M2T2_PINCHUK\qqq.xml | Select-Object -Property id, commandline, ExecutionStatus | Format-List

function script
{
Write-Host $rsave -ForegroundColor Green
Write-Host $rsave2 -ForegroundColor Yellow
}