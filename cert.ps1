New-SelfSignedCertificate -DnsName "machinename" -CertStoreLocation "cert:\LocalMachine\My"

New-SelfSignedCertificate -DnsName "machinename" -CertStoreLocation "C:\Users\Vinutha Vivek\Documents"

$mypwd = Get-Credential -UserName 'username' -Message 'password'

compmgmt.msc

Import-PfxCertificate -FilePath C:\mypfx.pfx -CertStoreLocation Cert:\LocalMachine\My -Password $mypwd.Password

Export-Certificate -Cert Cert:\LocalMachine\My\4D7C3B9074AE9326DF4A35554D83375477ECBEBD -FilePath C:\tstcert.cer

Get-WindowsOptionalFeature -Online | where FeatureName -like 'IIS-*'

Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures
Enable-WindowsOptionalFeature -online -FeatureName NetFx4Extended-ASPNET45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45

Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45

optionalfeatures

