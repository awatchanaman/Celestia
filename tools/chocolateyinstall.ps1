
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'celestia'
  softwareName   = 'Celestia*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = 'https://github.com/CelestiaProject/Celestia/releases/download/1.6.2.2/celestia-1.6.2.2-win.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  checksum       = 'E4773EFA942A145300A26DCE2F7D66AD9E2F2785D55A3BEF2FFD6060D2573564'
  checksumType   = 'sha256'
  }


Install-ChocolateyPackage @packageArgs
