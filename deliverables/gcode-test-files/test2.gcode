M04; Pen Up
G28; Home
G00 X35 Y25; Move to Start Position for Ring 1
M03; Pen Down
G01 X130.9 Y25 F350; Bottom Line 1
G02 X140.9 Y35 I0 J10; Bottom Left Clockwise Arc 1
G01 X140.9 Y194.4 F350; Left Line 1
G02 X130.9 Y204.4 I-10 J0 ; Top Left Clockwise Arc 1
G01 X35 Y204.4 F350; Top Line 1
G02 X25 Y194.4 I0 J-10; Top Right Clockwise Arc 1
G01 X25 Y35 F350; Right Line 1
G02 X35 Y25 I10 J0 ; Bottom Right Clockwise Arc 1
M04; Pen Up
G00 X60 Y50; Move to Start Position for Ring 2
M03; Pen Down
G01 X105.9 Y50 F350; Bottom Line 2
G02 X115.9 Y50 I0 J10; Bottom Left Clockwise Arc 2
G01 X115.9 Y169.4 F350; Left Line 2
G02 X105.9 Y179.4 I-10 J0 ; Top Left Clockwise Arc 2
G01 X60 Y179.4 F350; Top Line 2
G02 X50 Y169.4 I0 J-10; Top Right Clockwise Arc 2
G01 X50 Y60 F350; Right Line 2
G02 X60 Y50 I10 J0 ; Bottom Right Clockwise Arc 2
M04; Pen Up
G00 X80 Y75; Move to Start Position for Ring 3
M03; Pen Down
G01 X85.9 Y75 F350; Bottom Line 3
G02 X90.9 Y80 I0 K5; Bottom Left Clockwise Arc 3
G01 X90.9 Y149.4 F350; Left Line 3
G02 X85.9 Y154.4 I-5 J0 ; Top Left Clockwise Arc 3
G01 X80 Y154.4 F350; Top Line 3
G02 X75 Y149.4 I0 J-5; Top Right Clockwise Arc 3
G01 X75 Y80 F350; Right Line 3
G02 X80 Y75 I5 J0 ; Bottom Right Clockwise Arc 3
M04; Pen Up
G28; Home
M02; End Of Program
