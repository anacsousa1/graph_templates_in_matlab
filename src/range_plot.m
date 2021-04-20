%% Configure figure window:
figure(); title('Signal response');
windowWidth = 21.0;   % 21.0cm - A4 paper width
windowHeight = 29.7;  % 29.7cm - A4 paper height
set(gcf, 'units','centimeters','Position',[0, 0, windowWidth, windowHeight*.5]);

%% Line colors, width, rhos definitions
addpath('include'); get_colors_names;

lineWidth = 15;
rho4 = 4;rho3 = 3;
rho2 = 2;rho1 = 1;
nPoints = 50;

%% Create some data
range1_start = -80; range1 = 100; range1_end = range1_start + range1;
range2_start = 154; range2 = 223; range2_end = range2_start + range2;

data1_left = linspace(range1_start,range1_end,nPoints);
data1_right = data1_left + 180;
data1_rho = rho2*ones(1,nPoints);
data1_left = deg2rad(data1_left);data1_right = deg2rad(data1_right);

data2_right = linspace(range2_start,range2_end,nPoints);
data2_left = data2_right + 180;
data2_rho = rho1*ones(1,nPoints);
data2_rho2 = rho1*1.15*ones(1,nPoints);
data2_right = deg2rad(data2_right);data2_left = deg2rad(data2_left);

%% Plot
    polarplot(data1_left,data1_rho,'Color',light_green,'LineWidth',lineWidth);
    hold on;
    polarplot(data1_right,data1_rho,'Color',dark_green,'LineWidth',lineWidth);
    
    polarplot(data2_right,data2_rho2,'Color',light_purple,'LineWidth',lineWidth);
    polarplot(data2_left,data2_rho,'Color',dark_purple,'LineWidth',lineWidth);
    
    hold off;
    
    % Config labels    
    rlim([0 rho2*1.2]);
    legend('Left quadriceps','Right quadriceps','Left orthosis','Right orthosis');

% Details
ax = gca;
ax.set('FontSize',24)
ax.ThetaDir = 'clockwise';
ax.ThetaTick = [0 90 180 270];
ax.RTickLabel = []; 
ax.ThetaZeroLocation = 'top';

%% Save graph at folder figs
if ~exist('figs', 'dir')
   mkdir('figs')
end
saveas(gcf,'figs/RangePlot.fig');


