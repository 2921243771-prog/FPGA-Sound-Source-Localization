param(
    [string]$VivadoBin = 'C:\Xilinx\Vivado\2018.3\bin'
)

$ErrorActionPreference = 'Stop'
$buildPath = Join-Path $env:TEMP ('fft_ctrl_' + [Guid]::NewGuid().ToString('N').Substring(0, 8))
New-Item -ItemType Directory -Path $buildPath | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'fft_ctrl.v') -Destination $buildPath
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'tb_fft_ctrl.sv') -Destination $buildPath
$testResult = Join-Path $PSScriptRoot 'ctrl_test_result.txt'

Push-Location -LiteralPath $buildPath
try {
    # Compile the production .v as Verilog, and the TB as SystemVerilog.
    & (Join-Path $VivadoBin 'xvlog.bat') fft_ctrl.v
    if ($LASTEXITCODE -ne 0) { throw 'Verilog compilation failed' }
    & (Join-Path $VivadoBin 'xvlog.bat') --sv tb_fft_ctrl.sv
    if ($LASTEXITCODE -ne 0) { throw 'Testbench compilation failed' }
    $passLines = @()
    foreach ($testMode in @('FFT', 'IFFT')) {
        $topName = if ($testMode -eq 'FFT') { 'tb_fft_ctrl' } else { 'tb_fft_ctrl_ifft' }
        $snapshotName = $testMode.ToLower() + '_ctrl_test'
        & (Join-Path $VivadoBin 'xelab.bat') $topName -s $snapshotName
        if ($LASTEXITCODE -ne 0) { throw "$testMode elaboration failed" }
        & (Join-Path $VivadoBin 'xsim.bat') $snapshotName -runall
        if ($LASTEXITCODE -ne 0) { throw "$testMode simulation failed" }
        $simLog = Get-Content -LiteralPath (Join-Path $buildPath 'xsim.log') -Raw
        if ($simLog -notmatch "ALL $testMode CTRL TESTS PASSED") { throw "$testMode simulation did not report a pass" }
        $passLines += Get-Content -LiteralPath (Join-Path $buildPath 'xsim.log') |
            Where-Object { $_ -match '^PASS |^ALL (FFT|IFFT) CTRL TESTS PASSED' }
    }
    @('Vivado 2018.3 XSim FFT/IFFT input controller test', "Build directory: $buildPath", '') + $passLines |
        Set-Content -LiteralPath $testResult -Encoding utf8
    Write-Output "Test passed. Result: $testResult"
} finally {
    Pop-Location
}
