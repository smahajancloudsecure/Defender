$checkIntuneManaged = {
    $regKey = "HKLM:\SOFTWARE\Microsoft\Windows Defender"
    $regValue = "ManagedDefenderProductType"
    $value = (Get-ItemPropertyValue -Path $regKey -Name $regValue) -as [int]
    if ($value -eq 6) {
        Write-Output "Device is managed by Intune only."
    }
    elseif ($value -eq 7) {
        Write-Output "Device is co-managed by Intune and Configuration Manager."
    }
    else {
        Write-Output "Device is not managed by Intune."
    }
}
