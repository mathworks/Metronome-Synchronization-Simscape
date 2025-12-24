% Code to plot simulation results from sm_metronome_sync
%% Plot Description:
%
% The code below plots metronome angles and platform velocity
%
% Copyright 2022-2025 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sm_metronome_sync', 'var')
    sim('sm_metronome_sync')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sm_metronome_sync', 'var') || ...
        ~isgraphics(h1_sm_metronome_sync, 'figure')
    h1_sm_metronome_sync = figure('Name', 'sm_metronome_sync');
end
figure(h1_sm_metronome_sync)
clf(h1_sm_metronome_sync)

temp_colororder = get(gca,'defaultAxesColorOrder');

% Get simulation results
M_angles  = [];
for i = 1:length(MetronomeAngles.signals)
    M_angles = [M_angles MetronomeAngles.signals(i).values];
end
M_time = MetronomeAngles.time;
simlog_Pv = logsout_sm_metronome_sync.get('vx_platform').Values.Data;

% Plot results
simlog_handles(1) = subplot(2, 1, 1);
plot(M_time,M_angles)
hold off
grid on
title('Metronome Angle')
ylabel('Angle (deg)')

simlog_handles(2) = subplot(2, 1, 2);
plot(M_time, simlog_Pv, 'LineWidth', 1)
grid on
title('Platform Speed')
ylabel('Speed (m/s)')
xlabel('Time (s)')

linkaxes(simlog_handles, 'x')

% Remove temporary variables
clear simlog_t simlog_handles
clear temp_colororder

