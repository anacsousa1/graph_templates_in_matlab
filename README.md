# Goal

Templates for creating pretty graphs in Matlab.

# Required dependencies

- [Matlab Mathworks](https://www.mathworks.com/)

# Build and install

No build or installation is required.

1. Download the code (Code → Download ZIP).
2. Extract zip folder.
3. Open Matlab.
4. Navigate to the unzipped **`graph_templates_in_matlab`** directory.
5. Navigate to `src/`.

# Run

Here are a few examples to start quickly.

### Line plot

1. Run the script: `src/line_plot.m`.

### Line subplot

1. Run the script: `src/line_subplot.m`.

### Range angles

1. Run the script: `src/range_plot.m`.

## What is happening?

### Line plot

1. Configures the figure window (width and height).
2. Creates some sample data points (substitute data_x, data_y1, and data_y2 for your data).
3. Plots data with specific colors and line widths.
4. Configures labels and axes limits.
5. Saves graph at folder `fig`.

![Line plot](https://github.com/anacsousa1/graph_templates_in_matlab/blob/master/images/line_plot.png)

### Line subplot

1. Configures the figure window (width and height).
2. Creates some sample data points (substitute data_x, data_y1, and data_y2 for your data).
3. Plots data with specific colors and line widths. It creates subplots in horizontal positions.
4. Configures labels and axes limits.
5. Link axes between subplots.
6. Saves graph at folder `fig`.

![Line subplot](https://github.com/anacsousa1/graph_templates_in_matlab/blob/master/images/line_subplot.png)

### Range angles

1. Configures the figure window (width and height).
2. Defines line colors, width, and rhos.
3. Creates some sample data points.
4. Configures direction, tick labels, and zero locations.
5. Saves graph at folder `fig`.

![Range angles](https://github.com/anacsousa1/graph_templates_in_matlab/blob/master/images/range_angles.png)


## Colors

[Colors](https://github.com/anacsousa1/graph_templates_in_matlab/blob/master/src/include/get_colors_names.m) were selected from [ColorBrewer](https://colorbrewer2.org/#type=sequential&scheme=YlGnBu&n=5) (colorblind safe and print-friendly).

![Example colors option 1](https://github.com/anacsousa1/graph_templates_in_matlab/blob/master/images/colors1.png)
![Example colors option 2](https://github.com/anacsousa1/graph_templates_in_matlab/blob/master/images/colors2.png)


# Advanced tips for Matlab

Set an export setup template.

1. Open the created figure window in Matlab.
2. File -> Export setup
3. Play around with width, colorspace, fonts, lines.
4. Apply to Figure. Take a look, see if it looks better. Usually, I increase the font size and the line width.
5. Save your "style" in Export Styles, "Save as style named." Now, every time you open a new figure, you can load your style. It makes the process quicker and more standardized.
6. Export your figure as .fig and .pdf. With .fig, you can open it again and change settings (so you don't have to process data or run scripts). With .pdf, you don't lose resolution when zooming in.

---