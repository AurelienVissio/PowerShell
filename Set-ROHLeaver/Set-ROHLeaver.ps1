function Set-ROHLeaver {
    <#
    .SYNOPSIS
    Render AD attributes void
    
    .DESCRIPTION
    The script will look for specified atrributes with values and amend said values to a null state.
    
    .EXAMPLE
    Set-ROHLeaver -Name John.Doe -Server Server1
    
    .NOTES
    General notes
    #>
    [CmdletBinding()]
    param (
        [parameter(ValueFromPipeLineByPropertyName)]
        [ValidateNotNullOrEmpty()]
        [string] $Server = (Get-ADDomain).PDCEmulator,
        [parameter(ValueFromPipeline, ValueFromPipeLineByPropertyName)]
        [ValidateNotNullOrEmpty()]
        [string] $SearchBase
    )
        
    begin {
    }
        
    process {
        Get-ADUser -Filter {Enabled -ne $true} -Server $Server -SearchBase $SearchBase | 
            Set-ADUser -Clear manager -Replace @{msExchHideFromAddressLists = $true} -Server $Server -Verbose
        $results = Get-ADUser -Filter {Enabled -ne $true} -Properties manager, msExchHideFromAddressLists -Server $Server -SearchBase $SearchBase |
            Select-Object -Property name, manager, msExchHideFromAddressLists |
            Sort-Object -Property name
        Write-Output $results
    }
        
    end {
    }
    
}