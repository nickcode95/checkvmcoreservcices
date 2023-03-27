$services = @("BFE", "Dhcp", "Dnscache", "IKEEXT", "iphlpsvc", "nsi", "mpssvc", "RemoteRegistry")

forEach ($i in $services) {
write "Starting service $i"
    Set-Service -Name $i  -Status Running
}

forEach ($i in $services) {
Get-Service -Name $i
}
