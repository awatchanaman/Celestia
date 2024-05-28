$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'celestia'
  softwareName   = 'Celestia*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = 'https://github.com/CelestiaProject/Celestia/releases/download/1.6.4/celestia-1.6.4.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  checksum       = '76413C25DFEA4BF096CC371FA8D7856815725AE1617A5E3E0A7F2DCC170A08B8'
  checksumType   = 'sha256'
  }


Install-ChocolateyPackage @packageArgs

Remove-Item -Path "$env:TEMP\usm-celestia" -Recurse -Force