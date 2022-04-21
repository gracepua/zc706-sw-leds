# zc706-sw-leds <!-- omit in toc -->

### By: Grace Palenapa <!-- omit in toc -->

### Updated 04.21.2022 <!-- omit in toc -->

---------------------

- [Requirements](#requirements)
- [Building the project](#building-the-project)
- [Additional Sources](#additional-sources)

---------------------

This project allows the user to turn the on-board LEDs according to a button press on the board.

---------------------

## Requirements

- Vivado 2019.1
- license for the ZC706 development board
- ZC706 board part or board preset files installed in <INSTALLATION-ROOT-REPO>/<VERSION>/data/boards/board_parts or board_files respectively
  - in this case, the zc706 preset files are provided
- Xilinx license for the zc706

---------------------

## Building the project

1. Pull the project from GitHub.
2. Open Vivado and create a project.
3. Add `buttonled.vhd` to `Design Sources` in the `Sources` window.
4. Add `zc706_sw_led.xdc` to `Constraints` in the `Sources` window.
5. Open the Elaborated Design under `Project Manager --> RTL Analysis` to view the visual connections between the LEDs and the buttons.
6. Open `Window --> I/O Ports`. You will see a window at the bottom of the screen diplaying package pins and the I/O standard. Verify that this is correct.
7. Run Synthesis, Implmentation, and Generate Bitstream. Accept the default settings.
8. Open the `Hardware Manager` after the bitstream is generated.
9. Make sure that the board is connected to power and on, and plug the Micro-B end of a Micro-B to Standard-A USB cable into the Digilent USB-to-JTAG interface.
10. Click `Open Target --> Auto Connect` then `Program Device`.
11. Your program is ready when the `DONE` LED is on, and you can now control the LEDs via the buttons.


***NOTE: If you don't have the zc706, you will need change the board part/file by going to `Settings --> General --> Project device` after you've made your project. You will have to adjust the constraints file if you do this.***

---------------------

## Additional Sources

___FOLLOWED THIS TUTORIAL__ [Light Up ZC706 LEDs Using Push Buttons with VHDL](https://www.centennialsoftwaresolutions.com/post/light-up-zc706-leds-using-push-buttons-with-vhdl)
