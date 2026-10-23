param([string]$AppSrc='D:\FPGA\heelo_world\heelo_world.sdk\mic_app2\src')
$ErrorActionPreference='Stop'
$taskAppRoot=Split-Path -Parent $AppSrc
$taskEntry=Join-Path $AppSrc 'main.c'
$taskLegacyEntry=Join-Path $AppSrc 'helloworld.c'
if((Test-Path -LiteralPath $taskEntry) -and (Test-Path -LiteralPath $taskLegacyEntry)) {
    throw 'Both main.c and the legacy entry exist; keep only one application entry before installation'
}
if(!(Test-Path -LiteralPath $taskEntry) -and !(Test-Path -LiteralPath $taskLegacyEntry)) {
    throw 'Expected SDK application entry missing; inspect target before installation'
}
$taskBackup=Join-Path $PSScriptRoot ('backups\sdk_'+(Get-Date -Format 'yyyyMMdd_HHmmss'))
New-Item -ItemType Directory -Path $taskBackup -Force | Out-Null
foreach($taskName in @('main.c','helloworld.c','localize_2d.c','localize_2d.h')) {
    $taskOriginal=Join-Path $AppSrc $taskName
    if(Test-Path -LiteralPath $taskOriginal){Copy-Item -LiteralPath $taskOriginal -Destination $taskBackup}
}
$taskDefs=Join-Path $taskAppRoot 'makefile.defs'
if(Test-Path -LiteralPath $taskDefs){Copy-Item -LiteralPath $taskDefs -Destination $taskBackup}
if(Test-Path -LiteralPath $taskLegacyEntry) {
    Move-Item -LiteralPath $taskLegacyEntry -Destination $taskEntry
}
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'main.c') -Destination $taskEntry -Force
foreach($taskName in @('localize_2d.c','localize_2d.h')) {
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot $taskName) -Destination (Join-Path $AppSrc $taskName) -Force
}
if(!(Test-Path -LiteralPath (Join-Path $AppSrc 'lag_packet.h'))) {
    Copy-Item -LiteralPath (Join-Path (Split-Path -Parent $PSScriptRoot) 'lag_to_ps\lag_packet.h') -Destination $AppSrc
}
if(Test-Path -LiteralPath $taskDefs) {
    if((Get-Content -LiteralPath $taskDefs -Raw) -notmatch '\-lm') {
        Add-Content -LiteralPath $taskDefs -Value "`r`n# PS localization math library`r`nLIBS += -Wl,--start-group,-lm,-lc,-lgcc,--end-group" -Encoding ascii
    }
} else {Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'makefile.defs') -Destination $taskDefs}
"Installed localization sources in $AppSrc"
"Original SDK sources backed up in $taskBackup"
"Refresh the SDK application, then build. Rebuild PL bitstream for corrected diagonal search ranges."
