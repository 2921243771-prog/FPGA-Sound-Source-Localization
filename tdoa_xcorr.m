% Two-microphone TDOA from the SDK CSV: index,left_hex,right_hex.
% Repeated blocks with indices 0..2047 are analyzed independently.
csvFile = 'D:\FPGA\mic.csv';
Fs = 44100;
c = 343;                  % Approximate sound speed (m/s) at room temperature.
micSpacing = 44 * 2.54e-3; % 44 breadboard pitches = 0.11176 m; verify acoustic centers.
minCorrelation = 0.20;     % Preliminary quality gate; tune with known-direction recordings.
if ~exist('plotResult', 'var')
    plotResult = true;
end

raw = fileread(csvFile);
tok = regexp(raw, '(?m)^([0-9]+),([0-9A-Fa-f]{6}),([0-9A-Fa-f]{6})\r?$', 'tokens');
assert(~isempty(tok), 'No index,left_hex,right_hex rows were found.');

index = reshape(cellfun(@(t) str2double(t{1}), tok), [], 1);
left  = reshape(cellfun(@(t) hex2dec(t{2}), tok), [], 1);
right = reshape(cellfun(@(t) hex2dec(t{3}), tok), [], 1);
left(left >= 2^23) = left(left >= 2^23) - 2^24;
right(right >= 2^23) = right(right >= 2^23) - 2^24;

starts = [1; find(diff(index) <= 0) + 1];
ends = [starts(2:end) - 1; numel(index)];

if plotResult
    figure;
    hold on;
end

for group = 1:numel(starts)
    first = starts(group);
    last = ends(group);
    if index(first) == 0
        first = first + 1;  % Current SDK code can leave row 0 from an older block.
    end

    L = left(first:last);
    R = right(first:last);
    N = numel(L);
    assert(N >= 64, 'Group %d is too short.', group);

    % Remove DC offset before correlation.
    L = L - mean(L);
    R = R - mean(R);

    if isfinite(micSpacing) && micSpacing > 0
        K = ceil(micSpacing * Fs / c);
    else
        K = 15;            % Temporary search range until spacing is measured.
    end
    K = min(K, floor((N - 1) / 2));
    lags = -K:K;
    center = (K + 1):(N - K);  % Same number of products at every lag.
    score = zeros(size(lags));

    for q = 1:numel(lags)
        k = lags(q);
        a = L(center);
        b = R(center + k);
        score(q) = sum(a .* b) / sqrt(sum(a .^ 2) * sum(b .^ 2));
    end

    [peak, pos] = max(score);
    lagSamples = lags(pos);
    delayUs = 1e6 * lagSamples / Fs;
    pathDiffCm = 100 * c * lagSamples / Fs;
    fprintf('Group %d: lag = %+d samples, delay = %+.1f us, path difference = %+.2f cm, correlation = %.3f\n', ...
        group, lagSamples, delayUs, pathDiffCm, peak);

    if peak < minCorrelation
        fprintf('  Unreliable delay: the two channels do not share a clear waveform. Do not use this angle.\n');
    elseif isfinite(micSpacing) && micSpacing > 0
        ratio = c * lagSamples / (Fs * micSpacing);
        if abs(ratio) <= 1
            % Positive angle means toward the microphone producing column 2.
            fprintf('  angle from broadside = %+.1f degrees (positive: column-2 mic side)\n', asind(ratio));
        else
            fprintf('  delay exceeds the physical maximum for the entered mic spacing.\n');
        end
    end

    if plotResult
        plot(lags, score, '-o', 'DisplayName', sprintf('Group %d', group));
    end
end

if plotResult
    grid on;
    xlabel('Lag k (samples): positive means column 3 arrives later');
    ylabel('Normalized cross-correlation');
    legend('show');
end
