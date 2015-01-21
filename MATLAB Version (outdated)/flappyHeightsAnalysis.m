flappyHeight = double(flappyHeight);
[peaks, locs] = findpeaks(flappyHeight);
figure(1); clf; subplot(3,1,1); plot(flappyHeight); hold on; plot(locs, flappyHeight(locs), 'ro'); hold off
P = [0 0 0];
for parabolaNum = 1:length(locs)-1
    heights = flappyHeight(locs(parabolaNum):locs(parabolaNum+1));
    x = 1:length(heights);
    P(parabolaNum, :) = polyfit(x', heights, 2);
end
accels = P(:, 1);

quarts = quantile(accels, 3);
accelsValid = accels((accels>quarts(1) & accels<quarts(3)));
flappyAccel = 2 * mean(accelsValid)

%flappyV = derivative_dwt(flappyHeight, 'spl', 3, 1, 1);
flappyV = diff(flappyHeight);
[peaks, locs] = findpeaks(-flappyV);
subplot(3,1,2); plot(flappyV, 'k-'); hold on; plot(locs, flappyV(locs), 'ro'); hold off

quarts = quantile(peaks, 3);
velValid = peaks((peaks>quarts(1) & peaks<quarts(3)));
flappyPostFlapV = mean(velValid)