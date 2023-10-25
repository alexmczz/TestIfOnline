<#
.SYNOPSIS
    This script checks the online status of a specified computer.

.DESCRIPTION
    The script continuously checks the connectivity status of the specified computer using the Test-NetConnection cmdlet. It provides real-time feedback regarding the online or offline status of the target computer.

.NOTES
    Author: Alex McPadden
    Disclaimer: This script is provided as-is without any warranty. The author is not responsible for any potential damages or issues caused by the use of this script. Users are advised to test the script in non-production environments before using it in a production setting.

.LINK
    GitHub: https://github.com/alexmczz/TestIfOnline

#>

function TestIfOnline {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$pcName
    )

    while($true) {
        $testPconline = Test-NetConnection -ComputerName $pcName -InformationLevel Detailed
        if ($testPconline.PingSucceeded) {
            Write-Host "Online"
            [console]::Beep(500,500)
            break  # Break the loop if the PC is online
        } else {
            Write-Host "Offline"
        }
        Start-Sleep -Seconds 5  # Adjust this value as needed for the delay between each check
    }
}
