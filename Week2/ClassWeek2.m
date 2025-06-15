
% Example: Calculate spike rate from spike times

% Use the function calculateSpikeRate


spikeTimes = [0.1, 0.3, 0.5, 1.1, 1.9, 2.4];
duration = 5; % seconds
rate = calculateSpikeRate(spikeTimes, duration);
disp(['Spike rate: ', num2str(rate), ' spikes/s'])

%%
% Conditional Statements
% Use conditional statements to perform different actions based on conditions.

% Example: Determine if firing rate is high, moderate, or low
rate = 12; % spikes per second

if rate > 20
    disp('High firing rate')
elif rate >= 5 && rate <= 20
    disp('Moderate firing rate')
else
    disp('Low firing rate')
end
%%
% Loops
% Loops are used to repeat operations multiple times.

% Example: Simulate firing rates across multiple neurons
numNeurons = 5;
recordingDuration = 10; % seconds

spikeCounts = [15, 25, 10, 30, 20]; % spikes per neuron
firingRates = zeros(1, numNeurons);

for neuron = 1:numNeurons
    firingRates(neuron) = spikeCounts(neuron) / recordingDuration;
end

disp('Firing rates (spikes/s):')
disp(firingRates)

%%


%%
% Advanced Control Flow (Switch-Case)
% The switch-case structure handles multiple conditional paths efficiently.

% Example: Classify neuron activity state
activityLevel = 'medium';

switch activityLevel
    case 'high'
        disp('Neuron is highly active')
    case 'medium'
        disp('Neuron has moderate activity')
    case 'low'
        disp('Neuron activity is low')
    otherwise
        disp('Unknown activity state')
end





function spikeRate = calculateSpikeRate(spikeTimes, recordingDuration)
    % spikeTimes: array of spike timestamps (in seconds)
    % recordingDuration: total duration of recording (in seconds)
    % spikeRate: spikes per second

    numSpikes = length(spikeTimes);
    spikeRate = numSpikes / recordingDuration;
end
