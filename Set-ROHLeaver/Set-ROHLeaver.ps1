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
            [parameter(Mandatory,ValueFromPipeline,ValueFromPipeLineByPropertyName)]
            [ValidateNotNullOrEmpty()]
            [string[]]$Name,
            [parameter(ValueFromPipeline,ValueFromPipeLineByPropertyName)]
            [ValidateNotNullOrEmpty()]
            [string] $Server = (Get-ADDomain).PDCEmulator
        )
        
        begin {
        }
        
        process {
        }
        
        end {
        }
    
}