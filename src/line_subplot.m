%% Configure figure window:
figure(); title('Signal response');
windowWidth = 21.0;   % 21.0cm - A4 paper width
windowHeight = 29.7;  % 29.7cm - A4 paper height
set(gcf, 'units','centimeters','Position',[0, 0, windowWidth, windowHeight*.5]);

%% Create some data
data_x = 0:.1:8*pi;
data_y1 = sin(data_x);
data_y2 = cos(data_x);

%% Subplot(n_rows, n_columns, order)
addpath('include'); get_colors_names;
ax1 = subplot(2,1,1);
    plot(data_x, data_y1, '-', 'color', dark_green, 'linewidth', 2);
    % Config labels
    legend({'DATA 1'});
    xlabel('Time [s]');
    ylabel('Signal [V]');
    xlim([0 data_x(end)]);
    ylim([-1 1]);
    grid on;
    
ax2 = subplot(2,1,2);
    plot(data_x, data_y2, ':', 'color', dark_purple, 'linewidth', 2);
    
    legend({'DATA 2'});
    xlabel('Time [s]');
    ylabel('Signal [V]');
    xlim([0 data_x(end)]);
    ylim([-1 1]);
    grid on;
    
%% Link axes
linkaxes([ax1,ax2],'x');

%% Save graph at folder figs
if ~exist('figs', 'dir')
   mkdir('figs')
end
saveas(gcf,'figs/SubPlot.fig');

