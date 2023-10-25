# TestIfOnline PowerShell Module

The TestIfOnline PowerShell module provides a simple way to check if a specified computer is online. It utilizes the Test-NetConnection cmdlet to check the connectivity status of the specified computer.

## Installation

The module can be installed by copying the entire 'TestIfOnline' folder into one of the following directories:

- System-wide module location: `C:\Program Files\WindowsPowerShell\Modules`
- Current user's module location: `$env:USERPROFILE\Documents\WindowsPowerShell\Modules`

Once the module is placed in the appropriate directory, it can be imported using the following command:
Import-Module TestIfOnline


## Usage

To test if a computer is online, use the TestIfOnline function with the specified computer name or IP address as an argument:

TestIfOnline -pcName <computer name or IP address>


This will continuously check the online status of the specified computer and provide real-time feedback.

## Notes

- Ensure that the computer running the script has the necessary network access to the target computer.
- Adjust the delay between each check by modifying the 'Start-Sleep' value within the script if necessary.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
