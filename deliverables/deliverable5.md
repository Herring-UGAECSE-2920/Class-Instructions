# Deliverable 5

For deliverable 5, you'll be wiring up your H-Bridge chip for use with the Z axis stepper on the Plotter. However, before you test control over the motor using software, you'll need to pass the wiring safety checkpoint as described below.

## Wiring Safety Checkpoint for H-Bridge IC

Before demonstrating control over the Z axis motor with the [H-Bridge chip](https://www.ti.com/lit/ds/symlink/sn754410.pdf), you'll need to ensure that it, along with the [5V linear regulator](https://www.mouser.com/datasheet/2/308/MC7800_D-1773680.pdf) we'll use to power it, are connected up correctly. After doing so, you'll need to meet with Dr. Herring, Dr. Trudgen, or one of the TAs to verify correct wiring/power delivery. Once you have passed this wiring check, you'll be given the 5V linear regulator for use with H-Bridge Chip.

TODO: Add details about meeting times/places for wiring checkpoint

## Using the Texas Instruments SN754410 H-Bridge and GPIO to Control a Stepper

Now, you'll need to demonstrate that you understand and can use the SN754410 H-Bridge chip from Texas Instruments to drive a stepper motor. You'll be using the 'Z' axis motor on the plotter, which really just controls a mechanism to raise or lower the plotting pen/marker. This motor runs at 5V and pulls around 800mA concurrently. As before, make sure there are no mechanical problems with the 'Z' axis motor or its mounting before driving the motor.

To demonstrate control over the 'Z' axis motor using the H-Bridge chip, create a Python script to hold the plotter pen down for 1 second, and then up for 1 second, continuing this until the program is halted (Ctrl+C on the command-line).

For this section, you'll need to understand the Texas Instruments SN754410 H-Bridge chip and how it operates using [it's datasheet](https://www.ti.com/lit/ds/symlink/sn754410.pdf), then develop a method for controlling the chip using GPIO outputs.

## Project Management Report

For Deliverables 3, 4, and 5 a short write-up is required explaining how to use each each of the listed components. For this deliverable, include details on how you wired up your Z axis stepper to the H-Bridge IC and how you completed the control task using the GPIO outputs. The document should be no longer than 2 pages, 1.15 line spacing, 12pt Times New Roman font.