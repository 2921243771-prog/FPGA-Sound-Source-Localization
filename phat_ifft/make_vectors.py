"""Standard-library-only vectors and a bit-exact PHAT reference."""
import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parent
N = 4096
FS = 44100
MASK = (1 << 24) - 1
PAIRS = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]


def phat(a, b):
    ar, ai = a
    br, bi = b
    re = ar * br + ai * bi
    im = ai * br - ar * bi
    squared = re * re + im * im
    magnitude = math.isqrt(squared)
    magnitude += magnitude * magnitude != squared
    if not magnitude:
        return 0
    qr = (abs(re) << 22) // magnitude
    qi = (abs(im) << 22) // magnitude
    if re < 0:
        qr = -qr
    if im < 0:
        qi = -qi
    return ((qi & MASK) << 24) | (qr & MASK)


reports = []
for case, delays in [(0, (0, 1, 0, 1)), (1, (0, -4, 5, 1)),
                     (2, (0, 0, 0, 0)), (4, (0, 6, 13, 6))]:
    spectra = []
    for ch, (delay, amplitude) in enumerate(zip(delays, [1000000, 700000, 1300000, 500000])):
        if case == 2:
            amplitude = 0
        bins = []
        for k in range(N):
            phase = -2 * math.pi * k * (128 + delay) / N
            bins.append((round(amplitude * math.cos(phase)), round(amplitude * math.sin(phase))))
        spectra.append(bins)
    (ROOT / f"spectra_{case}.mem").write_text("".join(
        f"{((im & MASK) << 24) | (re & MASK):012x}\n"
        for bins in spectra for re, im in bins
    ), encoding="ascii")
    low = math.ceil(300 * N / FS)
    high = math.floor(6000 * N / FS)
    expected = []
    for i, j in PAIRS:
        for k in range(N):
            folded = min(k, N - k)
            word = phat(spectra[i][k], spectra[j][k]) if k not in (0, N // 2) and low <= folded <= high else 0
            expected.append(f"{word:012x}\n")
    (ROOT / f"phat_{case}.mem").write_text("".join(expected), encoding="ascii")
    reports.append({"case": case, "delays": delays,
                    "lags": [delays[i] - delays[j] for i, j in PAIRS],
                    "valid": case != 2,
                    "description": "last-output lag -1" if case == 0 else "signed lags and unequal gains" if case == 1 else "zero spectra"})
(ROOT / "reference.json").write_text(json.dumps(reports, indent=2), encoding="ascii")
print("Generated 4 four-channel spectral frames and 24 bit-exact PHAT frames, including actual diagonal13 at lag-13")
