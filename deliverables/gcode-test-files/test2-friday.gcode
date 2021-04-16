M04; Pen Up
G28; Home
G00 X35 Y40; Move to Start Position for Ring 1
M03; Pen Down
G01 X130.9 Y40 F350; Bottom Line 1
G02 X140.9 Y50 I0 J10; Bottom Left Clockwise Arc 1
G01 X140.9 Y209.4 F350; Left Line 1
G02 X130.9 Y219.4 I-10 J0 ; Top Left Clockwise Arc 1
G01 X35 Y219.4 F350; Top Line 1
G02 X25 Y209.4 I0 J-10; Top Right Clockwise Arc 1
G01 X25 Y50 F350; Right Line 1
G02 X35 Y40 I10 J0 ; Bottom Right Clockwise Arc 1
M04; Pen Up
G00 X60 Y65; Move to Start Position for Ring 2
M03; Pen Down
G01 X105.9 Y65 F350; Bottom Line 2
G02 X115.9 Y75 I0 J10; Bottom Left Clockwise Arc 2
G01 X115.9 Y184.4 F350; Left Line 2
G02 X105.9 Y194.4 I-10 J0 ; Top Left Clockwise Arc 2
G01 X60 Y194.4 F350; Top Line 2
G02 X50 Y184.4 I0 J-10; Top Right Clockwise Arc 2
G01 X50 Y75 F350; Right Line 2
G02 X60 Y65 I10 J0 ; Bottom Right Clockwise Arc 2
M04; Pen Up
G00 X80 Y90; Move to Start Position for Ring 3
M03; Pen Down
G01 X85.9 Y90 F350; Bottom Line 3
G02 X90.9 Y95 I0 J5; Bottom Left Clockwise Arc 3
G01 X90.9 Y164.4 F350; Left Line 3
G02 X85.9 Y169.4 I-5 J0 ; Top Left Clockwise Arc 3
G01 X80 Y169.4 F350; Top Line 3
G02 X75 Y164.4 I0 J-5; Top Right Clockwise Arc 3
G01 X75 Y95 F350; Right Line 3
G02 X80 Y90 I5 J0 ; Bottom Right Clockwise Arc 3
M04; Pen Up
G28; Home
M02; End Of Program
