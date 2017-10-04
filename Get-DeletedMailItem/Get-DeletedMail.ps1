function Get-DeletedMail {
    <#
    .SYNOPSIS
    Recover deleted mail item
    
    .DESCRIPTION
    This script will help recovering an item from a given mailbox that would have been been deleted from the deleted items folder
    
    .EXAMPLE
   Search-Mailbox "Mailbox Name" -SearchQuery "from:'sender' AND keyword" -TargetMailbox "User" -TargetFolder "Recovered Messages" -LogLevel Full -DeleteContent
    
    .NOTES
    General notes
    #>
    [CmdletBinding()]
        param (
            
        )
        
        begin {
        }
        
        process {
        }
        
        end {
        }
    }    
}