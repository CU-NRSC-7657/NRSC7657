function pipelineExample()
% PIPELINEEXAMPLE  A simple pipeline demonstrating subfunctions in one file.

%% 1) Generate or load data
nSamples = 500;
data = getSampleData(nSamples);

%% 2) Compute descriptive statistics
stats = computeStats(data);

%% 3) Display the stats
fprintf('Descriptive Statistics for %d samples:\n', nSamples);
fprintf('  Mean   : %.2f\n', stats.mean);
fprintf('  Median : %.2f\n', stats.median);
fprintf('  Std    : %.2f\n', stats.std);
fprintf('  Min    : %.2f\n', stats.min);
fprintf('  Max    : %.2f\n\n', stats.max);

%% 4) Visualize the data
visualizeData(data, stats);

end








%% Subfunction: Data Generation 
function data = getSampleData(n)
% getSampleData  Returns n random samples from a Normal distribution

mu    = 10;
sigma = 5;
data  = mu + sigma.*randn(n,1);

end

%% Subfunction: Descriptive Statistics
function stats = computeStats(data)
% computeStats  Computes basic descriptive statistics


stats.mean   = mean(data);
stats.median = median(data);
stats.std    = std(data);
stats.min    = min(data);
stats.max    = max(data);

end

%% Subfunction: Visualization 
function visualizeData(data, stats)
% visualizeData  Plots a histogram and boxplot of the data

figure('Name','Data Distribution','NumberTitle','off');

% Histogram
subplot(1,2,1);
histogram(data, 'FaceAlpha',0.7);
xlabel('Value');
ylabel('Frequency');
title('Histogram');

% Boxplot
subplot(1,2,2);
boxplot(data, 'Notch','on');
ylabel('Value');
title('Boxplot');

% Super-title with stats
sgtitle( sprintf('μ=%.2f, Median=%.2f, σ=%.2f',[stats.mean, stats.median, stats.std]) );

end
