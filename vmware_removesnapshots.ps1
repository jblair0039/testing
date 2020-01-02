<#
PURPOSE: Perform a snapshot on multiple VM's
Author: Jordan Blair
#>

#Prompt user to enter credentials (I don't want to be prompted for each vCenter, how do I get around this?)
$creds = Get-Credential
#$Username = $creds.GetNetworkCredential().username
#$Password = $creds.GetNetworkCredential().password



#vCenters
$vCenters = @(
    "192.168.254.104"
)


#This command should allow you to run commands on multiple vCenters at the same time
#I need to get around the prompts to continue, still working on that
Set-PowerCLIConfiguration -DefaultVIServerMode Multiple -Scope AllUsers -Confirm:$False

#This deals with the fact the certificate installed on vCenter is self signed
#I need to get around the prompts to continue, still working on that
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -DisplayDeprecationWarnings:$false -Confirm:$False

#This connects to the vCenter specified by the end user
Connect-VIServer -Server $vCenters -Credential $creds -ErrorAction SilentlyContinue

Write-Host "You are connected to "$global:defaultviserver""

#Must supply list of VM's 
Get-VM | Get-Snapshot | Remove-Snapshot -RemoveChildren -Confirm:$false -Verbose



