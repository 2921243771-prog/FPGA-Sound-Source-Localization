param(
    [string]$BuildDir = '',
    [string]$Vivado = 'C:\Xilinx\Vivado\2018.3\bin\vivado.bat',
    [string]$Python = '',
    [switch]$Synthesize
)
$ErrorActionPreference = 'Stop'
if (!$Python) {
    $taskBundledPython = Join-Path $env:USERPROFILE '.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
    $Python = if (Test-Path -LiteralPath $taskBundledPython) { $taskBundledPython } else { 'python' }
}
if (!$BuildDir) {
    $BuildDir = Join-Path ([IO.Path]::GetTempPath()) ('gccpl_' + (Get-Date -Format 'yyyyMMdd_HHmmss') + '_' + [guid]::NewGuid().ToString('N').Substring(0,6))
}
$BuildDir = [IO.Path]::GetFullPath($BuildDir)
if ($BuildDir -match '[^\x00-\x7F]') { throw 'Choose a short ASCII-only BuildDir for Vivado 2018.3.' }
if (Test-Path -LiteralPath $BuildDir) { throw "BuildDir already exists: $BuildDir" }
New-Item -ItemType Directory -Path $BuildDir | Out-Null
foreach ($taskFolder in @('rtl','sim','scripts')) {
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot $taskFolder) -Destination $BuildDir -Recurse
}
Set-Content -LiteralPath (Join-Path $PSScriptRoot 'build_path.txt') -Value $BuildDir -Encoding ascii
& $Python (Join-Path $BuildDir 'scripts\reference.py') generate (Join-Path $BuildDir 'vectors')
if ($LASTEXITCODE) { throw 'Reference vector generation failed.' }
Push-Location -LiteralPath $BuildDir
try {
    & $Vivado -mode batch -source scripts/simulate.tcl -nojournal -log simulation.log
    if ($LASTEXITCODE) { throw "Simulation failed: $BuildDir" }
    & $Python scripts/reference.py check reports
    if ($LASTEXITCODE) { throw 'Reference comparison failed.' }
    if ($Synthesize) {
        & $Vivado -mode batch -source scripts/synthesize.tcl -nojournal -log synthesis.log
        if ($LASTEXITCODE) { throw "Synthesis failed: $BuildDir" }
    }
} finally { Pop-Location }
Write-Output "Project and reports: $BuildDir"
