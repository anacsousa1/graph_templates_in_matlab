%% Create line plot from data_x and data_y
figure();

title('Signal response');

window_width = 21.0;   % 21cm is the width of a A4 paper
window_height = 29.7;  % 29.7cm is the height of A4 paper
set(gcf, 'units','centimeters','Position',[0, 0, window_width, window_height*.5]);

%% Create some data
data_x = 0:.1:8*pi;
data_y1 = sin(data_x);
data_y2 = cos(data_x);

%% Set colors
% These colors are colorblind safe and print friendly
% Reference: https://colorbrewer2.org/
light_green     = [166,219,160]./255;
dark_green      = [0,136,55]./255;
light_purple    = [194,165,207]./255;
dark_purple     = [123,50,148]./255;

%% Plot
% plot(x, y, style, ...), possible styles include:
% '-' (line)            |	'--' (dashed)	|	'-.' (dash-dot)	
% '.' (markers only)    |    ':' (dotted)
plot(data_x, data_y1, '-', 'color', dark_green, 'linewidth', 2);
hold on;
plot(data_x, data_y2, ':', 'color', dark_purple, 'linewidth', 2);
hold off;

%% Config labels
legend({'sin(x)', 'cos(x)'});

xlabel('Time [s]');
ylabel('Signal [V]');

xlim([0 data_x(end)]);
ylim([-1 1]);

grid on;

%% Save graph
% You can specify any extension corresponding to a file format.
saveas(gcf,'Image.fig');

