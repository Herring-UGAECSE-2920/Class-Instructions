M04; Pen Up
G28; Home
G00 X35 Y25; Move to Start Position for outer ring
M03; Pen Down
G01 X130.9 Y25 F350; make bottom line
G02 X140.9 Y35 I0 J10; Clockwise arc
G01 X140.9 Y194.4 F350;
G02 