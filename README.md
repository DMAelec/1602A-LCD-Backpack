# 1602A LCD Backpack

## Introduction
The 1602A LCD Backpack is a AVR(ATMEGA328) microcontroller module that mounts behind standard 16 character x 2 column LCD displays.
It is essentially an Arduino Uno with a built in LCD and some other extra features. The boards are designed using SMD parts
to reduce component size so proper tools are required.

![1602A Running](/Pics/1602-1.jpg)

![1602A Boards](/Pics/1602-2.jpg)

## Features
There are two variants of the backpack in this repo. One with a DS3231 I2C RTC including a I2C EEPROM useful for data logging,
and the other variant with a MAX232 RS232 interface IC. Both boards share features like a optional PWM backlight, speaker, 
and analog volt meter using a simple divider. These can be obmitted if not needed as all pins are brought out to a IO pinheader and
repurposed for other uses. Also included in this repo are external button boards for user input and a blank board for future attachments.

### Board List and features

* 1602A_LCD-RTC Backpack
  * PWM backlight
  * On board speaker
  * Analog voltage monitor
  * I2C real time clock
  * I2C EEPROM

* 1602A_LCD Serial Backpack
  * PWM backlight
  * On board speaker
  * Analog voltage monitor
  * RS232 serial interface with auto reset

* 1602A_Blank
  * Blank board outline for future additions

* BTNPAD_ANALOG_READ
  * Single wire 5 button board using a resistor network

* BTNPAD_TYPE_A
  * 4 button board with pullup resistors

* BTNPAD_TYPE_B
  * 4 button board with pullup resistors
  * LED backlit buttons

## Hardware Documentation

### Schematics

[1602A_LCD-RTC Schematic](/1602A_LCD-RTC%20Backpack/1602A_LCD-RTC%20%20Backpack-SCHEMATIC.pdf)

[1602A_LCD Serial Schematic](/1602A_LCD%20Serial%20Backpack/1602A_LCD%20Serial%20Backpack-SCHEMATIC.pdf)

[BTNPAD_ANALOG_READ Schematic](/Button%20Pad/BTNPAD_ANALOG_READ/BTNPAD_ANALOG_READ-SCHEMATIC.pdf)

[BTNPAD_TYPE_A Schematic](/Button%20Pad/BTNPAD_TYPE_A/BTNPAD_TYPE_A-SCHEMATIC.pdf)

[BTNPAD_TYPE_B Schematic](/Button%20Pad/BTNPAD_TYPE_B/BTNPAD_TYPE_B-SCHEMATIC.pdf)

### IO Pinout

![1602A AVR IO pinout](/Pics/1602_IO_pinout(AVR).bmp)

![1602A IDE IO pinout](/Pics/1602_IO_pinout(IDE).bmp)

### Known Issues

* 1602A_LCD Serial Backpack - REV2
  * Auto reset feature is erratic and may cause latchup
    * Workaround: bodge a 1N4148 diode between +5V and Reset or don't use

* 1602A_LCD - both variants
  * Analog voltage monitoring is after the DC IN protection diode, readings may be inaccurate
    * Workaround: adjust code to account for diode voltage drop


