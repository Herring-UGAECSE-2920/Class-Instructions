# Launching Python Scripts When Raspberry Pi Boots

An important aspect for making sure your in-person demos go smoothly is to limit the setup required to perform the demo. Instead of running your script through an SSH terminal or, even worse, bringing in a keyboard/mouse/monitor just to run a script, you should follow the guides given below to configure your Etch-A-Sketch, Math Mode, GCode Mode, or "main" scripts to run on startup. Whenever you complete your demo and need to start work on the next portion of the project, you should undo/disable the automatic startup to ensure your program does not run when you don't intend it to.

## Setting up the launch on boot

Since linux (the operating system that Raspberry Pi OS is based on) is used a ton in the datacenter/server world, it comes with a lot of handy features built right in. One of these features/programs is called [`cron` or `cron job`](https://en.wikipedia.org/wiki/Cron), which lets you schedule when to run a program/script on your Raspberry Pi.

you can follow [this guide](https://www.instructables.com/Raspberry-Pi-Launch-Python-script-on-startup/) to get a general idea of how `cron` works, and how you can use it to launch the Python scripts for your various demos. Remember to navigate to the correct directory As a side note, if you're using the `plotter` Python Virtual Environment we setup way back at the beginning of the semester, you'll need to include a line in your launcher script to get into that Virtual Environment (`workon plotter`).

## Disabling the launch on boot

When you're done with your demo and are ready to resume development on your plotter, you'll need to disable the `crontab` entry you made in the previous section. To do this, you'll need to open your `crontab` file by executing `crontab -e` (crontab edit), then you'll disable your previously entered entry (which should start with `@reboot` and contain your launcher script) by commenting it out. Much like Python, the line comment character for the crontab file is `#`, simply put a `#` at the beginning of the entry, save the file, and reboot.