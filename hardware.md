# Hardware

## Motor Hat

You will need to command and control 3 seperate stepper motors for this project. The X and Y axis motors will be controlled using the Adafruit DC and Stepper Motor HAT for Raspberry Pi ([Documentation](https://learn.adafruit.com/adafruit-dc-and-stepper-motor-hat-for-raspberry-pi)). The documentation at the previous link will give you all of the basic knowledge you will need to get started. The library provided by Adafruit can be used to control the stepper motors. 

A 12V 5A power supply is provided to power the stepper motors via the Motor Hat. To connect the supply to the hat, a 2.1mm Female DC Power barrel jack is provided ([Link](https://www.adafruit.com/product/368)).

> Pitfall: The Motor Hat and LCD Hat both use the same I2C address. You will need to solder a jumper on the Motor Hat and update your code accordingly. Read the documentation carefully.

> Pitfall: Be sure to pair the corresponding wires that are connected to each coil before attaching the motor to the hat. Failure to do so could burn up the motor or board.

## Stepper Motors

The supplied motors for the X and Y axis of the Plotter draw too much current for our Motor Hat. We will replace them with lighter-duty motors ([Documentation](https://www.adafruit.com/product/324)). A walkthrough of removing the steppers from the plotter and replacing them with the lighter-duty ones is provided [here](https://github.com/Herring-UGAECSE-2920/Class-Instructions/blob/main/deliverables/setup/plotter_setup.md). 

## H-Driver
To control the stepper for the Z-axis (pen holder), we will use a SN754410 Quadruple Half-H Driver ([Datasheet](https://www.ti.com/lit/ds/symlink/sn754410.pdf)). You will need to write a Python library to control the Z-axis stepper. Read the documentation. 

## Voltage Regulator
The Z-axis stepper is a 5-volt motor but our power supply provides 12 volts. To step down the voltage we will use a voltage regulator ([Datasheet](https://datasheetspdf.com/pdf-file/670210/ONSemiconductor/7805CT/1)). The 12V power supply will need to provide power to both the Motor Hat and the voltage regulator. The stepped down voltage from the regulator will then be supplied to the H-Driver. Read the documentation. 
 
## Rotary Encoders
To provide user input to the plotter, two rotary encoders will be used. To simplify the development of this project for you, you will be using the following Pigpio Encoder Python library: ([Link](https://github.com/vash3d/pigpio_encoder))

To use the library first clone the repository to your Plotter directory:

$ git clone https://github.com/vash3d/pigpio_encoder.git

The Github page gives a through explanation of how to use the library. 

> Pitfall: If you install the pigpio encoder library with pip , ie pip install pigpio_encoder, it will install an older version of the library that does not include some of the functions like up_callback()
and down_callback().

## LCD
