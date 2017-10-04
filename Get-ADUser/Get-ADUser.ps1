Get-ADUser -Filter {Enabled -eq $true} -Properties name,department,manager -SearchBase 'OU=Departments,OU=Royal Opera House,DC=RoyalOperaHouse,DC=co,DC=uk'| Where-Object {$_.manager -eq $null} | 
Select-Object name,department, manager | Sort-Object -property name -Descending | 
Export-Csv -Path 'C:\Users\aurelien.vissio\Desktop\AD active users.csv'