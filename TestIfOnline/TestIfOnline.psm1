

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
        } else {
            Write-Host "Offline"
        }
        Start-Sleep -Seconds 5  # Adjust this value as needed for the delay between each check
    }
}
