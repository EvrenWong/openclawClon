$RegistryPath = "HKCU:\Software\Microsoft\Windows\Shell\Bags\1\Desktop"
if (-not (Test-Path $RegistryPath)) {
    New-Item -Path $RegistryPath -Force
}
# Sort values: 0 = Name, 1 = Size, 2 = Type, 3 = Date
Set-ItemProperty -Path $RegistryPath -Name "Sort" -Value 0
Set-ItemProperty -Path $RegistryPath -Name "Direction" -Value 1

# Restart Explorer to apply changes
Stop-Process -Name explorer -Force
