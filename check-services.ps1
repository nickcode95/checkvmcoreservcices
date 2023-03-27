$services = @("Base Filtering Engine", "DHCP Client", "Dnscache", "IKEEXT", "iphlpsvc", "nsi", "mpssvc", "RemoteRegistry")

Foreach ($i in $services) {
write $i
}

Set-Service -Name $services -Status "Running"

Get-Service $services

Set-Service -Name $services -Status "Automatic"

Foreach ($i in $services) {
Set-Service -Name $i -Status "Running"
}