# Deliverable 4

For deliverable 4, you'll be wiring up your Adafruit Motor Hat for use with the X and Y axis stepper motors on the Plotter. However, before you test control over the motors using software, you'll need to pass the wiring safety checkpoint as described below.

## Wiring Safety Checkpoint for Motor Hat

Before demonstrating control over two of the stepper motors on the plotter, you'll need to correctly wire the X and Y axis steppers to the Adafruit Motor Hat. After doing so, you'll need to meet with Dr. Herring, Dr. Trudgen, or one of the TAs to verify correct wiring/power delivery. Once you have passed this wiring check, you'll be given the 12V 5A power supply and breadboard adapter meant for use with the motor hat.

TODO: Add details about meeting times/places for wiring checkpoint.

## Using the Adafruit Motor Hat to Control a Stepper

>***Warning: DO NOT USE the X and Y axis stepper motors that came attached with the Plotter, only use the lower-current motors we have provided you with the Adafruit Motor Hat. The motors that came with the Plotter can draw 1.6A concurrently, while the motor hat can only provide up to 1.2A concurrent per motor.***

Next, you'll need to demonstrate that you can use the Adafruit Motor Hat to control one of the 350 mA stepper motors we gave you. You may use the motor either on or off the Plotter rig itself, but make sure there are no obstructions or other mechanical issues with the Plotter rig before using the motor.

To demonstrate control over the stepper motor, create a Python script to move the motor clockwise for 1 second, and then counter-clockwise for 1 second, continuing this until the program is halted (Ctrl+C on the command-line).

For this portion, you'll be using the already installed Adafruit Python Library made for this kit/hat. [Here is great walkthrough](https://learn.adafruit.com/adafruit-dc-and-stepper-motor-hat-for-raspberry-pi/using-stepper-motors) for how to use the motor hat with the accompanying library, this goes through software and hardware setup. 

You should solder the `A0` jumper on the Motor Hat, which sets the `I2C` (the communication protocol used by the board) address to `0x61`, such that it won't conflict the the address used by the LCD display (`0x60` by default for both). This means that when you instantiate your `MotorKit` object(s), you need to add the `address` option as below:

```python
kit = MotorKit(i2c=board.I2C(),address=0x61)
```

## Project Management Report
For Deliverables 3, 4, and 5 a short write-up is required explaining how to use each each of the listed components. For this deliverable, include details on how you wired up your X and Y steppers to the motor hat and how you completed the control task. The document should be no longer than 2 pages, 1.15 line spacing, 12pt Times New Roman font.