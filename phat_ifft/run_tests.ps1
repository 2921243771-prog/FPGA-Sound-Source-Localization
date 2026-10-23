param([string]$VivadoBin='C:\Xilinx\Vivado\2018.3\bin')
$ErrorActionPreference='Stop'
$buildPath=Join-Path $env:TEMP ('phat_ifft_'+[Guid]::NewGuid().ToString('N').Substring(0,8))
New-Item -ItemType Directory -Path $buildPath | Out-Null
Get-ChildItem -LiteralPath $PSScriptRoot -File | Where-Object {$_.Extension -in '.v','.sv','.mem'} |
    Copy-Item -Destination $buildPath
$summary=@("Vivado 2018.3 PHAT/IFFT verification", "Build directory: $buildPath", 'IFFT uses a numerical reference model, not the vendor IP. Reported cycle times exclude actual vendor FFT processing latency.', '')
Push-Location -LiteralPath $buildPath
try {
    & (Join-Path $VivadoBin 'xvlog.bat') PHAT_Norm_Core.v PHAT_Weight.v PHAT_IFFT_Ctrl.v FFT_IFFT_Mux.v
    if($LASTEXITCODE -ne 0) {throw 'RTL compile failed'}
    & (Join-Path $VivadoBin 'xvlog.bat') --sv tb_PHAT_Weight.sv ifft_reference_model.sv tb_PHAT_IFFT.sv
    if($LASTEXITCODE -ne 0) {throw 'Testbench compile failed'}
    foreach($top in @('tb_PHAT_Weight','tb_PHAT_IFFT')) {
        & (Join-Path $VivadoBin 'xelab.bat') $top -s $top
        if($LASTEXITCODE -ne 0) {throw "$top elaboration failed"}
        & (Join-Path $VivadoBin 'xsim.bat') $top -runall
        if($LASTEXITCODE -ne 0) {throw "$top simulation failed"}
        $simLog=Get-Content -LiteralPath 'xsim.log' -Raw
        $marker=if($top -eq 'tb_PHAT_Weight') {'ALL PHAT WEIGHT TESTS PASSED'} else {'ALL PHAT IFFT TESTS PASSED'}
        if($simLog -notmatch $marker) {throw "$top did not report a pass"}
        $summary+=Get-Content -LiteralPath 'xsim.log' | Where-Object {$_ -match '^PAIR |^PASS |^ALL PHAT'}
    }
    Copy-Item -LiteralPath 'pair_results.csv' -Destination (Join-Path $PSScriptRoot 'pair_results.csv')
    $summary | Set-Content -LiteralPath (Join-Path $PSScriptRoot 'test_result.txt') -Encoding utf8
} finally {Pop-Location}
