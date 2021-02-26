# Deliverable 8

Through deliverables 8, 9, and 10 you'll be designing the 'Equation Drawer' or 'Math Mode' outlined in the [README](../README.md) of this repository. In addition to beginning your Equation Drawer design, you'll need to demonstrate a calibration sequence for your plotter (a crucial component for drawing accurately). You should also continue working on your Power Supply, as we will be checking your progress on that as part of this deliverable.

## Design Proposal (P)

To start, create a rough design proposal outlining what you and your team think would be the correct way to implement this functionality. It is not necessary to stick completely to the design proposal as you get into the weeds, but you should take it seriously as a planning exercise for this portion of the project. In your proposal, document how you would implement the individual points of functionality outlined below:  (For all items, make sure to see the readme and the assessment document for clarifications).

You will design an algorithm to graph several given functions. These functions will be provided ahead of time and can be ‘hard-coded’ into a Python script to be run. Again, refer to the UI description in the Assessment document.

After doing calibration (Auto and Manual), your plotter should navigate to the middle of the page, which will act as the origin of the graph. From the origin, you will need to draw very basic axes which extend 6 cm in each direction (12 cm total length), both positive and negative (left, right, up, and down relative to the origin).  This sets the plotting window for the function.

You will be expected to graph the following functions, in units of mm:

![eq1](https://latex.codecogs.com/png.latex?%5Cbg_white%20y%3D%20mx%20&plus;%20b)

![eq3](https://latex.codecogs.com/png.latex?%5Cbg_white%20y%20%3D%20ax%5E2%20&plus;%20bx%20&plus;%20c)

![eq4](https://latex.codecogs.com/png.latex?%5Cbg_white%20x%5E2%20&plus;%20y%5E2%20%3D%20r%5E2)

where the constants: `m`, `b`, `a`, `c`, and `r` will be given as input to your program.  Note: make sure your code handles +/- real number inputs for the constants.  

Your plotter should plot the function to the margins (25 mm on each side) of the paper. At the margins, the pen should go up. If only a small piece of the function is on the paper, then plot it on the paper. If none of the function is on the paper, do nothing and alert the user in some way.

Once again, your rotary encoder knobs are the only input for the user. The "vertical" will be increments of +/-10 and the "horizontal" increments of +/-1. Positive is clockwise. When the right hand encoder is short pressed, the selected value is entered and the cursor is moved to the next value to be set. If the right hand encoder is short pressed on the last value to be entered, the cursor moves back to the first value. When the right hand encoder is long pressed, the Math Mode starts (have an "are you sure?" dialogue). When the left hand encoder is short pressed it goes up one level in the Math Mode menu, and when long pressed, it goes to the top of the Math Mode menu.

**P**: The design proposal should be relatively short, approximately 2 pages with 1.15 line spacing, Times New Roman, 12 pt font.

## Begin Designing, Testing, and Documenting Your Design (P)

When you have completed your design proposal, you are free to start experimenting with getting the Math Mode working. While no specific thing is required for this week, you should be making good progress on the Math Mode. As a goal for this week, have the slope-intercept equation (`y = mx + b`) implemented and drawing correctly, and begin implementing some of the UI functions required for this mode (constants input, short/long press, equation selection/start, etc.). There is no "P" deliverable due for this item to turn in this week. You need to be looking forward to the accompanying design deliverable which is due Friday, March 19th.

## Demonstrate Automatic and Manual Calibration Modes (D)

This week, as a prerequisite to developing your Math Mode, we ask you to design and implement the automatic and manual calibration mode as outlined in the [README](../README.md). It's important to remember that these milestones are not strict deadlines, however you should have at least some functionality working for the automatic and manual calibration modes, and you should not move on to the rest of the project until you've completed the calibration modes.

Your calibration mode and all other modes from this point on should be accessed from the UI on the LCD panel with input from the rotary encoders.  See the assessment document for more description on the UI modes.

**D**: You will need to submit a video of the work you've completed for your calibration modes. It should be short and to the point, while showing each of the pieces of functionality that you've completed. This is primarily a fallback option for us to grade, in case hardware issues arise in class. Show the following in your video: 1) Auto-calibrate mode in operation 2) manual calibrate mode in operation.  Show your UI is working with the mode.

# Summary

In summary, for this week you need to:

1. Submit your **D** deliverables (Calibration video) to the Design Deliverables 8 assignment folder on ELC. You do not need to submit code on ELC, just make sure your GitHub repository is up to date and contains the needed scripts.

2. Prepare for your in-person demonstration.

3. Submit your **P** deliverable (design proposal) to the Progress Deliverables 8 assignment folder on ELC.

4. Update your User Manual and Technical Documentation with your findings.

5. Submit your Weekly Project Management Report to the Deliverable 8 assignment folder on ELC.
