# 1602A LCD Backpack

## Introduction
The 1602A LCD Serial Backpack is a ATMEGA328 microcontroller module that mounts behind standard 16 character x 2 column LCD displays.
It is essentially an Arduino Uno with a built in LCD and RS-232 serial port. The boards are designed using SMD parts reducing component
size, making it fit neatly behind the display.

A board with 4 tactile buttons for user input is included in this repo.

#### LCD Running

![1602A Running](/Pics/1602-1.jpg)

#### LCD Backpack and 4 Button Board

![1602A Boards](/Pics/1602-2.jpg)


## Features

* 1602A_LCD Serial Backpack
  * PWM backlight
  * On board speaker
  * Analog voltage monitor
  * RS232 serial interface with auto reset

* BTNPAD_TYPE_B
  * 4 button board with pullup resistors
  * LED backlit buttons
  
All features are optional and can be left unpopulated as the signals are brought out to a pin header


## Hardware Documentation

### Schematics

[1602A IDE IO pinout (bmp)](/Pics/1602_IO_pinout(IDE).bmp)

[1602A_LCD Serial Schematic (pdf)](/1602A_LCD%20Serial%20Backpack/1602A_LCD%20Serial%20Backpack-SCHEMATIC.pdf)

[BTNPAD_TYPE_B Schematic (pdf)](/BTNPAD_TYPE_B/BTNPAD_TYPE_B-SCHEMATIC.pdf)

### Jumpers, Switches and Pots

#### JP1 - PWM Backlight Select
|  Position  |            Description               |
|------------|--------------------------------------|
| 1-2 closed | Use LCD PWM Backlight (D10)          |
| 2-3 closed | Continuous Backlight (Unpopulate Q1) |

#### JP2 - Enable Auto Reset
|  Position  |            Description               |
|------------|--------------------------------------|
| closed     | Auto Reset on DTR                    |
| open       | Auto Reset Disabled                  |

#### SW1 - Reset Switch
Press SW1 to reset the MCU

#### RV1 - LCD Contrast 
Adjust RV1 to set the LCD contrast

### Parts List
Most parts are SMD and can be ordered from Mouser or Digikey

#### 1602A_LCD Serial Backpack - REV2
| Component Type     | Reference             | Description                                      |
|--------------------|-----------------------|--------------------------------------------------|
| Resistor           | R1                    | 10K Ohm, 0805 SMD                                |
| Resistor           | R2                    | 100K Ohm, 1206 SMD                               |
| Resistor           | R3                    | 10K Ohm, 1206 SMD                                |
| Resistor           | R4                    | 330 Ohm, 1206 SMD                                |
| Resistor           | R5, R7, R8, R9        | 1K Ohm, 0805 SMD                                 |
| Resistor           | R6                    | 6.8K Ohm, 0805 SMD                               |
| Trim Pot           | RV1                   | 10K Ohm, 3362P THT                               |
| Capacitor          | C1, C3, C6, C11, C12  | 0.1uF, 25V, MLCC, 0805 SMD                       |
| Capacitor          | C2                    | 22uF, 10V, Tant, Kemet Case B (1311) SMD         |
| Capacitor          | C4, C5                | 22pF, 25V, MLCC, 0805 SMD                        |
| Capacitor          | C7                    | 0.047uF, 25V, MLCC, 0805 SMD                     |
| Capacitor          | C8, C9, C10           | 0.33uF, 25V, MLCC, 0805 SMD                      |
| Transistor         | Q1, Q2                | MMBT3904, SOT-23 SMD                             |
| Diode              | D1                    | 1N4001 (M1), DO-214AC SMD                        |
| Diode              | D2                    | 1N4148, Mini MELF SMD                            |
| LED                | D3                    | Green LED, 0805 SMD                              |
| Integrated Circuit | U1                    | LM1117-5.0 LDO Regulator, TO252-3 (DPAK) SMD     |
| Integrated Circuit | U2                    | ATMEGA328P-AU 8-Bit Microcontroller, TQFP-32 SMD |
| Integrated Circuit | U3                    | MAX3232 RS-232 Interface, SOIC-16-N SMD          |
| LCD Display        | DS1                   | 1602A LCD Character Display, THT                 |
| Speaker            | SPKR1                 | CST-951RP Piezo Speaker, THT                     |
| Crystal            | Y1                    | 16MHz, 8pF, 2.5mm x 2.0mm SMD                    |
| Tactile Switch     | SW1                   | PTS636-SM25 Tactile Switch, SMD                  |
| Terminal Block     | J1                    | 2 Pos Screw Terminal Block, 5.08mm pitch THT     |
| Pin Header         | J2                    | 2x12 Pin Header, 2.54mm pitch THT                |
| JST Connector      | J3                    | S4B-PH-K JST Connector, 2.0mm pitch THT          |
| PCB                |                       | 1602A_LCD Serial Backpack (REV2), 2 Layer PCB    |
| Misc               |                       | LCD Mounting Hardware                            |


#### BTNPAD_TYPE_B - REV1
| Component Type     | Reference             | Description                                      |
|--------------------|-----------------------|--------------------------------------------------|
| Resistor           | R1, R2, R3, R4, R5    | 10K Ohm, 0805 SMD                                |
| Resistor           | R6                    | 1K Ohm, 0805 SMD                                 |
| Resistor           | R7, R8                | 56 Ohm, 1206 SMD                                 |
| Transistor         | Q1                    | MMBT3904, SOT-23 SMD                             |
| LED                | D1, D2, D3, D4        | Green LED, 0805 SMD                              |
| Tactile Switch     | SW1, SW2, SW3, SW4    | PTS526-SK08 Tactile Switch, SMD                  |
| Pin Header         | J1                    | 1x7 Pin Header, 2.54mm pitch THT                 |
| PCB                |                       | BTNPAD_TYPE_B (REV1), 2 Layer PCB, White S-Mask  |


## Firmware Documentation

### Arduino IDE LCD Code
The backpack is compatible with the standard Arduino Liquid Crystal library but some modification to the code is required

In the main code, change the Arduino pin number line to:
const int rs = 7, en = 6, d4 = 5, d5 = 4, d6 = 3, d7 = 2;


For PWM backlight functionality, add line: 
analogWrite(10, 255);


## Release Notes

### Known Issues

* 1602A_LCD Serial Backpack - REV2
  * Auto reset feature is erratic and may cause latchup
    * Workaround: bodge a 1N4148 diode between +5V and Reset or don't use
  * Analog voltage monitoring is after the DC IN protection diode, readings may be inaccurate
    * Workaround: adjust code to account for diode voltage drop

