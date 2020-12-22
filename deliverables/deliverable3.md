# Deliverable 3

For this week's deliverable, you'll be creating a simple initial state machine to capture the behavior of the plotter, testing some of the functionality of your Raspberry Pi by using it's GPIO, the Motor Hat, etc., figuring out how to use the Stepper Motor Driver Integrated Circuit, and creating an initial circuit diagram for your system.

## Initial State Machine

First, you'll need to create a simple initial State Machine for your XY-Plotter. Think about all of the things it should be able to do, and how you would accomplish that. In order to keep from getting overwhelmed by details at this stage, keep the states broad in scope without implementation details (communication protocols, code, etc.). Things like "move the motor for the desired amount of time" and "Update the LCD display" are good examples of this.

If you need a refresher on State Machines, [this](http://people.cs.vt.edu/~kafura/ComputationalThinking/Class-Notes/FSM.pdf) document should be a good starting point. 

You're free to make your State Machine diagram in whatever way you choose, however a good tool to do this digitally is [creately](https://creately.com/lp/state-machine-diagram-tool/), which can be used collaboratively much like Google docs.

## Accessing and Using A GPIO

Next, you'll need to demostrate that you can access and use a GPIO as both input and output. Your Raspberry Pi should have come with a breadboard, some jumper wires, and some resistors, LEDs, and buttons for this deliverable.

To demonstrate output, create a Python script to blink an LED, either with user control or on a set interval.

To demonstrate input, use the guides below to create a Python scipt to print a statement once on the screen whenever a button in the real world is pressed.

For both of these you'll need to use the `RPi.GPIO` Python library, with its API [Reference](https://learn.sparkfun.com/tutorials/raspberry-gpio/python-rpigpio-api) and some [example code](https://learn.sparkfun.com/tutorials/raspberry-gpio/python-rpigpio-example). The [hardware setup](https://learn.sparkfun.com/tutorials/raspberry-gpio/hardware-setup) guides also have some useful information (Note: This guide contains a setup for the Raspberry Pi 2, make sure to use the `pinout` command in a terminal to check wiring and pin numbers).

>***Warning: while connecting up simple components to the GPIO pins is perfectly safe, it's important to be careful how you wire things up. LEDs should have resistors to limit the current passing through them. Do not use 5V for 3V3 components. Do not connect motors directly to the GPIO pins, instead use an H-bridge circuit or a motor controller board.***

### Tips on using Using GPIO as input

While you're creating your GPIO input script, you'll notice that a simple polling method of using the GPIO may not give the results desired. To remedy this, we suggesting looking into setting up [interrupts](https://roboticsbackend.com/raspberry-pi-gpio-interrupts-tutorial/) with the GPIO pins, or using [software debounce](https://www.arduino.cc/en/Tutorial/BuiltInExamples/Debounce).

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

For this section, you'll need to understand the Texas Instruments SN754410 H-Bridge chip and how it operates using [it's datasheet](https://www.ti.com/lit/ds/symlink/sn754410.pdf), then develop a method for controlling the chip using GPIO outputs. [Here's a quick guide](https://itp.nyu.edu/physcomp/labs/motors-and-transistors/lab-controlling-a-stepper-motor-with-an-h-bridge/) detailing some of the aspects of controlling the chip using an Arduino.

[//]: # (TODO: LCD Deliverable Task)

[//]: # (TODO: Digital Encoder Deliverable Task)

## Creating a Circuit Diagram

Finally, you'll need to create a comprehensive circuit diagram detailing how every component of your XY Plotter system will be connected including but not limited to the:

- LCD Hat
- Motor Hat
- H-Bridge Chip
- Digital Encoders
- Stepper Motors

and any other eletrical componments needed for the project such as resistors, capacitors, or any Integrated Circuits used.

To create this you can use any tool you wish, however we recommend using the [Autodesk EAGLE](https://www.autodesk.com/products/eagle/overview?plc=F360&term=1-YEAR&support=ADVANCED&quantity=1) schematic creator (free for students) or [circuit-diagram.org](https://www.circuit-diagram.org/), as they are both extensible, meaning you can import or create custom blocks such as one for the Raspberry Pi 4 GPIO. 