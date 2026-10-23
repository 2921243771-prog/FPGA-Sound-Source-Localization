param([string]$VivadoBin = 'C:\Xilinx\Vivado\2018.3\bin')
$ErrorActionPreference = 'Stop'
$buildPath = Join-Path $env:TEMP ('fft_path_' + [Guid]::NewGuid().ToString('N').Substring(0,8))
New-Item -ItemType Directory -Path $buildPath | Out-Null
foreach ($name in @('fft_ctrl.v','FFT_Receive_Store.v','tb_fft_path.sv')) {
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot $name) -Destination $buildPath
}
Push-Location -LiteralPath $buildPath
try {
    & (Join-Path $VivadoBin 'xvlog.bat') fft_ctrl.v FFT_Receive_Store.v
    if ($LASTEXITCODE -ne 0) { throw 'Verilog compilation failed' }
    & (Join-Path $VivadoBin 'xvlog.bat') --sv tb_fft_path.sv
    if ($LASTEXITCODE -ne 0) { throw 'Testbench compilation failed' }
    & (Join-Path $VivadoBin 'xelab.bat') tb_fft_path -s fft_path_test
    if ($LASTEXITCODE -ne 0) { throw 'Elaboration failed' }
    & (Join-Path $VivadoBin 'xsim.bat') fft_path_test -runall
    if ($LASTEXITCODE -ne 0) { throw 'Simulation failed' }
    $simLog = Get-Content -LiteralPath (Join-Path $buildPath 'xsim.log') -Raw
    if ($simLog -notmatch 'ALL FFT PATH TESTS PASSED') { throw 'No pass marker' }
    $passLines = Get-Content -LiteralPath (Join-Path $buildPath 'xsim.log') |
        Where-Object { $_ -match '^PASS |^ALL FFT PATH TESTS PASSED' }
    @('Vivado 2018.3 XSim TX/RX integration test', "Build directory: $buildPath", '') + $passLines |
        Set-Content -LiteralPath (Join-Path $PSScriptRoot 'path_test_result.txt') -Encoding utf8
} finally { Pop-Location }
