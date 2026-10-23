"""Numerical reference and deterministic vectors; Python 3 + NumPy.

This is a GCC-PHAT reference, NOT the old two-channel time-domain correlator.
The arithmetic-unit reference is integer/bit exact; the FFT reference is
floating point and is compared at the lag/direction outputs, not bit exact.
"""
import argparse
import csv
import json
import math
from pathlib import Path
import numpy as np

PAIRS = ((0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3))
FRAME_N = 2048
FFT_N = 4096
SAMPLE_RATE = 44100
BAND_LOW = math.ceil(300 * FFT_N / SAMPLE_RATE)
BAND_HIGH = math.floor(6000 * FFT_N / SAMPLE_RATE)


def pack(values, width):
    word = 0
    for value in values:
        word = (word << width) | (int(value) & ((1 << width) - 1))
    return word


def direction(lags):
    a, b, c, d, e, f = map(int, lags)
    h, v = a + c - d + f, -b - c - d - e
    return math.degrees(math.atan2(h, v)) if h or v else 0.0


def norm_integer(ar, ai, br, bi):
    re, im = ar * br + ai * bi, ai * br - ar * bi
    squared = re * re + im * im
    mag = math.isqrt(squared)
    mag += mag * mag != squared
    if not mag:
        return 0, 0
    qr, qi = (abs(re) << 22) // mag, (abs(im) << 22) // mag
    return (-qr if re < 0 else qr), (-qi if im < 0 else qi)


def gcc_reference(samples, hann):
    """Use the same integer mean/window preparation, then floating FFTs."""
    mean = np.sum(samples, axis=0, dtype=np.int64) // FRAME_N
    windowed = ((samples.astype(np.int64) - mean) * hann[:, None]) >> 18
    spectra = np.fft.fft(windowed, n=FFT_N, axis=0)
    lags, curves = [], []
    for p, (i, j) in enumerate(PAIRS):
        cross = spectra[:, i] * np.conj(spectra[:, j])
        phat = np.zeros(FFT_N, dtype=np.complex128)
        positive = cross[1:FFT_N // 2]
        mag = np.abs(positive)
        phat[1:FFT_N // 2] = np.divide(positive, mag, out=np.zeros_like(positive), where=mag > 0)
        phat[1:BAND_LOW] = 0
        phat[BAND_HIGH + 1:FFT_N // 2] = 0
        phat[FFT_N // 2 + 1:] = np.conj(phat[1:FFT_N // 2][::-1])
        corr = np.fft.ifft(phat).real
        limit = math.ceil((0.099 if p in (2, 3) else 0.070) * SAMPLE_RATE / 343)
        # Same scan order as the RTL, positive values only.
        indices = list(range(limit + 1)) + list(range(FFT_N - limit, FFT_N))
        idx = indices[int(np.argmax(corr[indices]))]
        lag = idx if idx < FFT_N // 2 else idx - FFT_N
        lags.append(lag if np.max(corr[indices]) > 0 else 0)
        curves.append(corr)
    return lags, direction(lags), np.asarray(curves)


def generate(out):
    out.mkdir(parents=True, exist_ok=True)
    rng = np.random.default_rng(20261016)
    hann = np.rint(np.hanning(FRAME_N) * ((1 << 17) - 1)).astype(np.int64)
    (out / "hann_2048.mem").write_text("".join(f"{v:05x}\n" for v in hann), encoding="ascii")
    special = [(0, 0, 0, 0), (3, 4, 1, 0), (3, -4, 1, 0),
               (-3, 4, 1, 0), (-3, -4, 1, 0), (1, 0, 1, 0),
               (0, 1, 1, 0), (-(1 << 23), -(1 << 23), -(1 << 23), -(1 << 23)),
               ((1 << 23) - 1, -(1 << 23), -(1 << 23), (1 << 23) - 1)]
    norm_vectors = special + [tuple(map(int, row)) for row in rng.integers(-(1 << 23), 1 << 23, (512 - len(special), 4))]
    lines = []
    for values in norm_vectors:
        re, im = norm_integer(*values)
        lines.append(f"{(pack(values, 24) << 48) | pack((re, im), 24):036x}\n")
    (out / "norm_cases.mem").write_text("".join(lines), encoding="ascii")
    angle_vectors = [(0, 0, 0, 0, 0, 0), (7, -7, 0, -14, -7, 7),
                     (-32768,) * 6, (32767,) * 6]
    angle_vectors += [tuple(map(int, row)) for row in rng.integers(-32768, 32768, (256 - len(angle_vectors), 6))]
    (out / "angle_cases.mem").write_text("".join(
        f"{(pack(v, 16) << 32) | (round(direction(v) * 65536) & 0xffffffff):032x}\n"
        for v in angle_vectors), encoding="ascii")
    # Integer propagation delays generate eight compass directions. Frame 8
    # is DC-only silence; frame 9 is a low-level signal with unequal gains.
    delays = [(0, 0, 8, 8), (0, -6, 6, 0), (8, 0, 8, 0),
              (6, 0, 0, -6), (8, 8, 0, 0), (0, 6, -6, 0),
              (0, 8, 0, 8), (-6, 0, 0, 6), (0, 0, 0, 0), (0, -6, 6, 0)]
    all_samples, expected_lines, report = [], [], []
    for case, delay in enumerate(delays):
        base = rng.normal(0, 1, FRAME_N + 128)
        # Speech-like broadband waveform, with no periodic-tone ambiguity.
        base_spec = np.fft.rfft(base)
        frequencies = np.fft.rfftfreq(len(base), 1 / SAMPLE_RATE)
        base_spec[(frequencies < 500) | (frequencies > 5000)] = 0
        base = np.fft.irfft(base_spec, len(base))
        base = base / np.std(base)
        amplitude = 0 if case == 8 else (24 if case == 9 else 25000)
        gains = (1.0, 0.7, 1.2, 0.4)
        dc = (120003, -80001, 430002, -200005)
        data = np.column_stack([
            np.rint(base[64 - d:64 - d + FRAME_N] * amplitude * g).astype(np.int64) + offset
            for d, g, offset in zip(delay, gains, dc)
        ])
        expected_lags = [delay[i] - delay[j] for i, j in PAIRS]
        lag, angle, _ = gcc_reference(data, hann)
        assert lag == expected_lags, (case, lag, expected_lags)
        expected_lines.append(f"{(pack(lag, 16) << 32) | (round(angle * 65536) & 0xffffffff):032x}\n")
        all_samples.extend(f"{pack(row[::-1], 24):024x}\n" for row in data)
        report.append({"frame": case, "lags": lag, "angle_degrees": angle,
                       "valid": case != 8, "test": "silence" if case == 8 else "quiet" if case == 9 else "direction"})
    (out / "samples.mem").write_text("".join(all_samples), encoding="ascii")
    (out / "expected.mem").write_text("".join(expected_lines), encoding="ascii")
    (out / "reference_results.json").write_text(json.dumps(report, indent=2), encoding="ascii")
    print(f"Generated 512 PHAT cases, 256 angles and {len(delays)} four-mic frames in {out}")


def check(out):
    expected = json.loads((out / "reference_results.json").read_text())
    with (out / "rtl_results.csv").open(newline="") as f:
        rows = list(csv.DictReader(f))
    assert len(rows) == len(expected), (len(rows), len(expected))
    for row, ref in zip(rows, expected):
        lags = [int(row["lag" + str(i + 1) + str(j + 1)]) for i, j in PAIRS]
        assert lags == ref["lags"], (row, ref)
        angle = int(row["angle_q16"]) / 65536
        error = (angle - ref["angle_degrees"] + 180) % 360 - 180
        assert abs(error) < 0.0051, (row, ref)
        assert bool(int(row["valid"])) == ref["valid"]
    maximum = max(int(row["cycles"]) for row in rows)
    summary = {"passed_frames": len(rows), "max_processing_cycles": maximum,
               "processing_ms_at_100mhz": maximum / 100000,
               "processing_ms_at_50mhz": maximum / 50000,
               "notes": "Simulation cycle counts; does not prove post-route clock timing or real acoustic accuracy."}
    (out / "verification_summary.json").write_text(json.dumps(summary, indent=2), encoding="ascii")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("action", choices=("generate", "check"))
    parser.add_argument("directory", type=Path)
    args = parser.parse_args()
    (generate if args.action == "generate" else check)(args.directory)
