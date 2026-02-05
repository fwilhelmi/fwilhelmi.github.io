%%%%%%%%%%%%%%%%%%%% ML4Net %%%%%%%%%%%%%%%%%%%%
disp('========================================');
disp('     UniCa AI/ML for Networking 2026    ');
disp('========================================');

clear all
clc

% Scenario parameters
map_size = 10;           % Map size (x axis) in meters
number_of_devices = 10;  % Number of devices (including 1 AP and N-1 STAs)
cw = 16;                 % Contention Window (CW)

% Channel access & transmission parameters
L = 12000;      % Bits per packet 
R = 47e6;       % Transmission rate (bits per second)
DIFS = 34e-6;   % DIFS duration (seconds)
SIFS = 16e-6;   % DIFS duration (seconds)
Tack = 40e-6;   % Time for transmitting and ACK (seconds)
Ttx = L/R;      % Time for transmitting a data packet (seconds)

% Assign random positions to the STAs
positions = getRandomPointsInMap(number_of_devices, map_size);

% Compute network performance

% - Compute "slot" probabilities
tau = 2/(cw+1);
pe = (1-tau)^number_of_devices;
ps = number_of_devices*tau*(1-tau)^(number_of_devices-1);
pc = 1 - pe - ps;

% - Compute "slot" durations
Te = 9e-6;                      % Duration of an empty slot
Tc = DIFS + Ttx + 2*SIFS;       % Duration of a collision slot
Ts = DIFS + Ttx + SIFS + Tack;  % Duration of a successful slot

% - Compute the duration of a slot
Ttotal = pe*Te + pc*Tc + ps*Ts;

% - Get the throughput
throughput = (ps*L)/Ttotal;

% Plot the deployment
plotDeploymentAndPerformance(positions, map_size, throughput, pe, pc, ps);

%getRandomPointsInMap Generates random positions in a 2D map.
function positions = getRandomPointsInMap(num_points, map_size)
    % Initialize the positions matrix
    positions = zeros(num_points, 2);
    % Generate random positions
    positions = map_size * rand(num_points, 2);
end

%plotDeployment Plots the Wi-Fi deployment and performance.
function plotDeploymentAndPerformance(positions, map_size, ...
    throughput, pe, pc, ps)

    figure;
    subplot(1,2,1)    
    s = scatter(map_size/2, map_size/2, 'rs', 'filled');
    hold on
    s.SizeData = 150;
    s2 = scatter(positions(:, 1), positions(:, 2), 'bo', 'filled');
    s2.SizeData = 120;
    xlabel('X-coordinate [m]', 'Interpreter', 'latex');
    ylabel('Y-coordinate [m]', 'Interpreter', 'latex');
    legend({'AP device', 'STA device'})
    axis([0 map_size 0 map_size])
    grid on;
    set(gca, 'fontsize', 18, 'TickLabelInterpreter', 'latex')

    subplot(2,2,2)
    b = bar(diag([pe pc ps], 0));
    ylabel('Probability', 'Interpreter', 'latex');
    legend({'p_e', 'p_c', 'p_s'}, 'Interpreter', 'latex')
    grid on;
    set(gca, 'fontsize', 18, 'TickLabelInterpreter', 'latex')
    
    subplot(2,2,4)
    bar(throughput*1e-6);
    ylabel('Throughput [Mbps]', 'Interpreter', 'latex');
    axis([0 2 0 60])
    grid on;
    set(gca, 'fontsize', 18, 'TickLabelInterpreter', 'latex')

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%