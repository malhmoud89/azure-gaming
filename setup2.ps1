param (
    [string]$admin_username = "",
    [string]$admin_password = "",
    [string]$steam_username = "",
    [string]$steam_password = "",
    [switch]$manual_install = $false
)

$script_name = "utils.psm1"
Import-Module "C:\$script_name"

Disable-ScheduleWorkflow
Disable-Devices
Enable-Audio
Install-VirtualAudio
Install-Steam
if (!$manual_install) {
    Set-Steam $steam_username $steam_password
}
Add-AutoLogin $admin_username $admin_password
Restart-Computer