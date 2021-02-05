# Deliverable 5

For deliverable 5, you'll be wiring up your H-Bridge chip for use with the Z-axis stepper, which you'll then need to control using the GPIO on the Raspberry Pi.

## Using the Texas Instruments SN754410 H-Bridge and GPIO to Control a Stepper (D)

Now, you'll need to demonstrate that you understand and can use the SN754410 H-Bridge chip from Texas Instruments to drive a stepper motor. You'll be using the 'Z' axis motor on the plotter, which really just controls a mechanism to raise or lower the plotting pen/marker. This motor runs at 5V and pulls around 800mA concurrently. As before, make sure there are no mechanical problems with the 'Z' axis motor or its mounting before driving the motor.

**D**: To demonstrate control over the 'Z' axis motor using the H-Bridge chip, create a Python script to hold the plotter pen down for 1 second, and then up for 1 second, continuing this until the program is halted (Ctrl+C on the command-line).

For this section, you'll need to understand the Texas Instruments SN754410 H-Bridge chip and how it operates using [it's datasheet](https://www.ti.com/lit/ds/symlink/sn754410.pdf), then develop a method for controlling the chip using GPIO outputs.

# Summary

In summary, for this week you need to:

1. Submit evidence in the form of pictures/videos for your **D** deliverable item to the Deliverable 5 assignment folder on ELC. You do not need to submit code on ELC, just make sure your GitHub repository is up to date and contains the need scripts.

3. Update your User Manual and Technical Documentation with your findings.

4. Submit your Weekly Project Management Report to the Deliverable 5 assignment folder on ELC.
