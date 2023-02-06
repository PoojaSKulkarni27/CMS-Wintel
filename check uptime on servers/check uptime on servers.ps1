#
# Script.ps1
#
Get-WmiObject Win32_OperatingSystem -ComputerName VM400027730,VM400018400 |
select csname, @{LABEL='LastBootupTime' ;EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}}
