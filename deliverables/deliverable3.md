# Deliverable 3

For this week's deliverable, you'll be creating a simple initial state machine to capture the behavior of the plotter, testing some of the functionality of your Raspberry Pi by using it's GPIO, the Motor Hat, etc., figuring out how to use the Stepper Motor Driver Integrated Circuit, and creating an initial circuit diagram for your system.

## Initial State Machine

First, you'll need to create a simple initial State Machine for your XY-Plotter. Think about all of the things it should be able to do, and how you would accomplish that. In order to keep from getting overwhelmed by details at this stage, keep the states broad in scope without implementation details (communication protocols, code, etc.). Things like "move the motor for the desired amount of time" and "Update the LCD display" are good examples of this.

If you need a refresher on State Machines, [this](http://people.cs.vt.edu/~kafura/ComputationalThinking/Class-Notes/FSM.pdf) document should be a good starting point. 

You're free to make your State Machine diagram in whatever way you choose, however a good tool to do this digitally is [creately](https://creately.com/lp/state-machine-diagram-tool/), which can be used collaboratively much like Google docs.

## Accessing and Using A GPIO

>***Warning: while connecting up simple components to the GPIO pins is perfectly safe, it's important to be careful how you wire things up. LEDs should have resistors to limit the current passing through them. Do not use 5V for 3V3 components. Do not connect motors directly to the GPIO pins, instead use an H-bridge circuit or a motor controller board.***

Next, you'll need to demostrate that you can access and use a GPIO as both input and output. Your Raspberry Pi should have come with a breadboard, some jumper wires, and some resistors, LEDs, and buttons for this deliverable.

To demonstrate output, create a Python script to blink an LED, either with user control or on a set interval.

To demonstrate input, use the guides below to create a Python scipt to print a statement once on the screen whenever a button in the real world is pressed.

For both of these you'll need to use the [`pigpio` Python library](http://abyz.me.uk/rpi/pigpio/index.html#Type_3), with its API [Reference](http://abyz.me.uk/rpi/pigpio/python.html) and some [example code](http://abyz.me.uk/rpi/pigpio/examples.html#Python%20code). Again, make sure to use a current-limiting resistor when using the GPIO as output, and enable the [Pull-Up or Pull-Down](https://en.wikipedia.org/wiki/Pull-up_resistor) feature on the pin when using it as input. (Note: Make sure to use the `pinout` command in a terminal to check wiring and pin numbers).

### Tips on using Using GPIO as input

While you're creating your GPIO input script, you'll notice that a simple polling method of using the GPIO may not give the results desired. To remedy this, we suggesting looking into setting up [interrupts/callbacks](http://abyz.me.uk/rpi/pigpio/python.html#callback) with the GPIO pins, or using [software debounce](https://www.arduino.cc/en/Tutorial/BuiltInExamples/Debounce).

## Using the Adafruit Motor Hat to Control a Stepper

>***Warning: DO NOT USE the X and Y axis stepper motors that came with the Plotter, only use the lower-current motors we have provided you with the Adafruit Motor Hat. The motors that came with the Plotter can draw 1.6A concurrently, while the motor hat can only provide up to 1.2A concurrent per motor.***

Next, you'll need to demostrate that you can use the Adafruit Motor Hat to control one of the 350 mA stepper motors we gave you. You may use the motor either on or off the Plotter rig itself, but make sure there are no obstructions or other mechanical issues with the Plotter rig before using the motor.

To demonstrate control over the stepper motor, create a Python script to move the motor clockwise for 1 second, and then counter-clockwise for 1 second, continuing this until the program is halted (Ctrl+C on the command-line).

For this portion, you'll be using the already installed Adafruit Python Library made for this kit/hat. [Here is great walkthrough](https://learn.adafruit.com/adafruit-dc-and-stepper-motor-hat-for-raspberry-pi/using-stepper-motors) for how to use the motor hat with the accompanying library, this goes through software and hardware setup. 

You should note that we have already soldered the `A0` jumper on the Motor Hat, which sets the `I2C` (the communication protocol used by the board) address to `0x61`, such that it won't conflict the the address used by the LCD display (`0x60` by default for both). This means that when you instantiate your `MotorKit` object(s), you need to add the `address` option as below:

```python
kit = MotorKit(i2c=board.I2C(),address=0x61)
```

## Using the Texas Instruments SN754410 H-Bridge and GPIO to Control a Stepper

Next, you'll need to demonstrate that you understand and can use the SN754410 H-Bridge chip from Texas Instruments to drive a stepper motor. You'll be using the 'Z' axis motor on the plotter, which really just controls a mechanism to raise or lower the plotting pen/marker. This motor runs at 5V and pulls around 800mA concurrently. As before, make sure there are no mechanical problems with the 'Z' axis motor or its mounting before driving the motor.

To demonstrate control over the 'Z' axis motor using the H-Bridge chip, create a Python script to move the motor clockwise for 1 second, and then counter-clockwise for 1 second, continuing this until the program is halted (Ctrl+C on the command-line).

For this section, you'll need to understand the Texas Instruments SN754410 H-Bridge chip and how it operates using [it's datasheet](https://www.ti.com/lit/ds/symlink/sn754410.pdf), then develop a method for controlling the chip using GPIO outputs.

## Using the DFRobot LCD Interface

Next, you'll need to demonstrate that you can take advantage of some of the basic features of the DFRobot LCD necessary for creating a useful user interface. Before attempting to use the LCD, make sure the Adafruit motor hat is either off of the Pi, or its `I2C` address has been changed by creating a solder bridge on the `A0` jumper, otherwise the LCD will not be able to communicate with the Pi.

To demonstrate grasp of how to set up and use the LCD and its buttons, create a program which displays an integer starting at 0 on the LCD. Whenever the top LCD button is pressed, the number increments by 1 and whenever the botton LCD button is pressed, the number decrements by 1.

To accomplish this, you'll need to read through the [DFRobot LCD documentation](https://wiki.dfrobot.com/I_O_Expansion_HAT_for_Pi_zero_V1_0_SKU_DFR0604IIC_16X2_RGB_LCD_KeyPad_HAT_1_0_SKU_DFR0514_DFR0603). We've included the library needed to use the LCD (`rgb1602.py`) in your starter repository on the class Github, and you should look through it to get an idea of how to use the LCD. It should also be helpful to look through the [DFRobot provided examples on Github](https://github.com/DFRobot/DFRobot_RGB1602_RaspberryPi).

## Using the KY-40 Rotary Encoder



## Creating a Circuit Diagram

Finally, you'll need to create a comprehensive circuit diagram detailing how every component of your XY Plotter system will be connected including but not limited to the:

- LCD Hat
- Motor Hat
- H-Bridge Chip
- Digital Encoders
- Stepper Motors

and any other eletrical components needed for the project such as resistors, capacitors, or any Integrated Circuits used.

To create this you can use any tool you wish, however we recommend using the [Autodesk EAGLE](https://www.autodesk.com/products/eagle/overview?plc=F360&term=1-YEAR&support=ADVANCED&quantity=1) schematic creator (free for students) or [circuit-diagram.org](https://www.circuit-diagram.org/), as they are both extensible, meaning you can import or create custom blocks such as one for the Raspberry Pi 4 GPIO. 