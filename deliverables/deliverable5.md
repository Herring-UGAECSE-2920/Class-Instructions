# Deliverable 5

Through deliverables 5 and 6, you'll be designing the Etch-A-Sketch mode outlined in the [README](../README.md) of this repository. Essentially you'll be recreating the functionality of the [famous toy](https://en.wikipedia.org/wiki/Etch_A_Sketch) with your XY Plotter and Raspberry Pi.

## Design Proposal

To start, create a rough design proposal outlining what you and your team think would be the correct way to implement this functionality. It is not necessary to stick completely to the design proposal as you get into the weeds, but you should take it seriously as a planning exercise for this portion of the project. In your proposal, document how you would implement the individual points of functionality outlined below:

- When spinning the encoder knobs clockwise, the X-axis should move "right" relative to its home position and the Y-axis should move "up" relative to its home position. Conversely, when spinning the encoder knobs counter-clockwise, the X-axis should move "left" relative to its home, and the Y-axis should move "down" relative to its home.

- The mode should include the ability to adjust any necessary parameters such as motor step size, speed, etc.

- The mode should also include the ability to toggle the Z-axis (the pen holder) in an "up" and "down" position.

- For your safety as well as the safety of the equipment, you should make sure the motors stop when encountering the X and Y endstop switches and when it has reached the opposite end of its gantry. In essence, make sure the motors do not attempt to go where they can't.

The design proposal should be relatively short, approximately 1.5 pages with 1.15 line spacing, Times New Roman, and 12 pt font.

## Begin Designing, Building, Testing, and Documenting

When you have completed your design proposal, you are free to start experimenting with getting the Etch-A-Sketch mode working. As a goal for this deliverable, simply get the encoders to move a motor (X or Y axis) to the right when turned clockwise, and to the left when turned counter-clockwise.

When you have achieved this functionality, take a video of it for submission proof. 