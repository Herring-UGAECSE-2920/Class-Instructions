# Deliverable 3

For this week's deliverable, you'll be creating a simple initial state machine to capture the behavior of the plotter, testing some of the functionality of your Raspberry Pi by using it's GPIO, the Motor Hat, etc., figuring out how to use the Stepper Motor Driver Integrated Circuit, and creating an initial circuit diagram for your system.

## Initial State Machine

First, you'll need to create a simple initial State Machine for your XY-Plotter. Think about all of the things it should be able to do, and how you would accomplish that. In order to keep from getting overwhelmed by details at this stage, keep the states broad in scope without implementation details (communication protocols, code, etc.). Things like "move the motor for the desired amount of time" and "Update the LCD display" are good examples of this.

If you need a refresh on State Machines, [this](http://people.cs.vt.edu/~kafura/ComputationalThinking/Class-Notes/FSM.pdf) document should be a good starting point. 

You're free to make your State Machine diagram in whatever way you choose, however a good tool to do this digitally is [creately](https://creately.com/lp/state-machine-diagram-tool/), which can be used collaboratively much like Google docs.

## Accessing and Using A GPIO

Next, you'll need to demostrate that you can access and use a GPIO as both input and output. Your Raspberry Pi should have come with a breadboard, some jumper wires, and some resistors, LEDs, and buttons for this deliverable.

To demonstrate output, create a Python script to blink an LED, either with user control or on a set interval.

To demonstrate input, use the guides below to create a Python scipt to print a statement once on the screen whenever a button in the real world is pressed.

For both of these you'll need to use the `RPi.GPIO` Python library, with its API [Reference](https://learn.sparkfun.com/tutorials/raspberry-gpio/python-rpigpio-api) and some [example code](https://learn.sparkfun.com/tutorials/raspberry-gpio/python-rpigpio-example). The [hardware setup](https://learn.sparkfun.com/tutorials/raspberry-gpio/hardware-setup) guides also have some useful information (Note: This guide contains a setup for the Raspberry Pi 2, make sure to use the `pinout` command in a terminal to check wiring and pin numbers).

***Warning: while connecting up simple components to the GPIO pins is perfectly safe, it's important to be careful how you wire things up. LEDs should have resistors to limit the current passing through them. Do not use 5V for 3V3 components. Do not connect motors directly to the GPIO pins, instead use an H-bridge circuit or a motor controller board.***

### Using GPIO as output



### Using GPIO as input



## Using the Adafruit Motor Hat to Control a Stepper

## Using the Texas Instruments SN754410 IC and GPIO to Control a Stepper

## Creating a Circuit Diagram