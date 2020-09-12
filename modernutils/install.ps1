#!/usr/bin/env pwsh

# this allows us to call ps1 files, which allows us to have spaces in filenames
# ('powershell "$Env:USERPROFILE\test.ps1" foo' will fail if it has a space in
# the path but '& "$Env:USERPROFILE\test.ps1" foo' will work even with a space)
Set-ExecutionPolicy -Scope Process Bypass

IF($Env:WEBI_HOST -eq $null -or $Env:WEBI_HOST -eq "")
{
    $Env:WEBI_HOST = "https://webinstall.dev"
}

$Env:PATH = "$Env:USERPROFILE\.local\bin;$Env:PATH"
& "$Env:USERPROFILE\.local\bin\webi.ps1" bat 
& "$Env:USERPROFILE\.local\bin\webi.ps1" curlie
& "$Env:USERPROFILE\.local\bin\webi.ps1" fd
& "$Env:USERPROFILE\.local\bin\webi.ps1" fzf
& "$Env:USERPROFILE\.local\bin\webi.ps1" jq
& "$Env:USERPROFILE\.local\bin\webi.ps1" lsd
& "$Env:USERPROFILE\.local\bin\webi.ps1" rg
& "$Env:USERPROFILE\.local\bin\webi.ps1" sd
& "$Env:USERPROFILE\.local\bin\webi.ps1" node
& "$Env:USERPROFILE\.local\bin\webi.ps1" ssh-pubkey
