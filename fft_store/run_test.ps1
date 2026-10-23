param(
    [string]$VivadoBin = 'C:\Xilinx\Vivado\2018.3\bin'
)

$ErrorActionPreference = 'Stop'
$buildPath = Join-Path $env:TEMP ('fft_store_' + [Guid]::NewGuid().ToString('N').Substring(0, 8))
New-Item -ItemType Directory -Path $buildPath | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'FFT_Receive_Store.v') -Destination $buildPath
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'tb_FFT_Receive_Store.sv') -Destination $buildPath
$testResult = Join-Path $PSScriptRoot 'test_result.txt'

Push-Location -LiteralPath $buildPath
try {
    & (Join-Path $VivadoBin 'xvlog.bat') --sv FFT_Receive_Store.v tb_FFT_Receive_Store.sv
    if ($LASTEXITCODE -ne 0) { throw 'xvlog compilation failed' }

    & (Join-Path $VivadoBin 'xelab.bat') tb_FFT_Receive_Store -s fft_store_test
    if ($LASTEXITCODE -ne 0) { throw 'xelab elaboration failed' }

    & (Join-Path $VivadoBin 'xsim.bat') fft_store_test -runall
    if ($LASTEXITCODE -ne 0) { throw 'xsim failed' }

    $simLog = Get-Content -LiteralPath (Join-Path $buildPath 'xsim.log') -Raw
    if ($simLog -notmatch 'ALL TESTS PASSED') { throw 'Simulation did not report a pass' }
    $passLines = Get-Content -LiteralPath (Join-Path $buildPath 'xsim.log') |
        Where-Object { $_ -match '^PASS |^ALL TESTS PASSED' }
    @('Vivado 2018.3 XSim receiver storage test', "Build directory: $buildPath", '') + $passLines |
        Set-Content -LiteralPath $testResult -Encoding utf8
    Write-Output "Test passed. Result: $testResult"
} finally {
    Pop-Location
}
