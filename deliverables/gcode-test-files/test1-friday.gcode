M04; Pen Up
G28; Home
G00 X0 Y46.75; Move to Square Start
M03; Pen Down
G01 X165.9 Y46.75 F350; Bottom of Square
G01 X165.9 Y212.65 F350; Left Side of Square
G01 X0 Y212.65 F350; Top of Square
G01 X0 Y46.75 F350; Right Side of Square
M04; Pen Up
G00 X82.95 Y46.75; Move to Circle Start
M03; Pen Down
G02 X165.9 Y129.7 I0 J82.95; Bottom-Left Quadrant of Circle
G02 X82.95 Y212.65 I-82.95 J0; Top-Left Quadrant of Circle
G02 X0 Y129.7 I0 J-82.95; Top-Right Quadrant of Circle
G02 X82.95 Y46.75 I82.95 J0; Bottom-Right Quadrant of Circle
M04; Pen Up
G00 X154.787 Y88.225; Move to Triangle Start
M03; Pen Down
G01 X82.95 Y212.65 F350; Draw First Side
G01 X11.113 Y88.225 F350; Draw Second Side
G01 X154.787 Y88.225 F350; Draw Third Side
M04; Pen Up
G28; Home
M02; End of Program