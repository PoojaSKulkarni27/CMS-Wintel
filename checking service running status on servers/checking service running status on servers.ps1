#
# Script.ps1
#
Get-Service -ComputerName (Get-content C:\Users\c78494A\Desktop\server_names.txt) | Select-Object -
Property Machinename, Name, status,  StartType | where-object {$_.Name -eq "KNTCMA_Primary"} |  Format-Table  -auto >> C
:\Users\c78494A\Desktop\result.txt
