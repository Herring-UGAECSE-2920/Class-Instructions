# Deliverable 6

Through deliverables 6 and 7, you'll be designing the Etch-A-Sketch mode outlined in the [README](../README.md) of this repository. Essentially you'll be recreating the functionality of the [famous toy](https://en.wikipedia.org/wiki/Etch_A_Sketch) with your XY Plotter and Raspberry Pi.

## Design Proposal (P)

To start, create a rough design proposal outlining what you and your team think would be the correct way to implement this functionality. It is not necessary to stick completely to the design proposal as you get into the weeds, but you should take it seriously as a planning exercise for this portion of the project. In your proposal, document how you would implement the individual points of functionality outlined below:

- When spinning the encoder knobs clockwise, the X-axis should move "right" relative to its home position and the Y-axis should move "down" relative to its home position. Conversely, when spinning the encoder knobs counter-clockwise, the X-axis should move "left" relative to its home, and the Y-axis should move "up" relative to its home.

- The mode should include the ability to adjust any necessary parameters such as motor step size.

- The mode should also include the ability to toggle the Z-axis (the pen holder) in an "up" and "down" position by pressing encoder knob "in" (it should click when pressed like a button).

- For your safety as well as the safety of the equipment, you should make sure the motors stop when encountering the X and Y endstop switches and when it has reached the opposite end of its gantry. In essence, make sure the motors do not attempt to go where they can't.

In addition to your general outline for the design, your proposal should include a plan for how you are going to divide the labor for this feature among your teammates, a good description of any algorithms or other pieces of information you plan to use, and a complete testing plan to ensure your Etch-A-Sketch mode is as glitch-free as possible!

**P**: The design proposal should be relatively short, approximately 2 pages with 1.15 line spacing, Times New Roman, 12 pt font.

## Eagle CAD Introdution (P)
Purpose is to show minimal familiarity with Eagle.  If your team has already done something with Eagle you can upload it for this deliverable.  If you have no prior Eagle work, your team should use the knowledge gained from Lecture 7 and recommended YouTube video to build a simple 12V to 5V voltage divider.  Include both the board and schematic files along with a short pdf showing screen shots of your design.  You must also include a BOM (Bill of Materials) and short explanation of PCB design rules for your design with focus on final wiring.




## Begin Designing, Building, Testing, and Documenting (D)

When you have completed your design proposal, you are free to start experimenting with getting the Etch-A-Sketch mode working. While no specific thing is required for this week, you should be making good progress on the Etch-A-Sketch mode. As a goal for this deliverable, simply get the encoders to move a motor (X or Y axis) to the right when turned clockwise, and to the left when turned counter-clockwise (up and down for the Y-axis).  There is not a "D" deliverable to turn in.  You need to be looking forward to the deliverable which is coming up on next week.

# Summary

In summary, for this week you need to:

1. Submit your **P** deliverables (design proposal and Eagle Primer) to the Progress Deliverables 6 assignment folder on ELC. You do not need to submit code on ELC, just make sure your GitHub repository is up to date and contains the need scripts.

3. Update your User Manual and Technical Documentation with your findings.

4. Submit your Weekly Project Management Report to the Deliverable 5 assignment folder on ELC.
