// GPIO IP Example
// Stop_Go Application (stop_go.c)
// Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard
//
// Hardware configuration:
//
// AXI4-Lite interface:
//   Mapped to offset of 0
//
// Red LED:
//   Pin GPIO[17] drives a red LED through a 220 ohm resistror
//
// Green LED:
//   Pin GPIO[19] drives a green LED through a 220 ohm resistor
// Pushbutton:
//   Pin GPIO[16] pulled low by switch, pulled high through pullup in FPGA

//-----------------------------------------------------------------------------
// Device includes, defines, and assembler directives
//-----------------------------------------------------------------------------

#include <stdint.h>
#include <stdbool.h>
#include "gpio_ip.h"

// Pins
#define RED_LED 17
#define GREEN_LED 19
#define PUSH_BUTTON 16

//-----------------------------------------------------------------------------
// Subroutines
//-----------------------------------------------------------------------------

// Blocking function that returns only when SW1 is pressed
void waitPbPress()
{
	while(getPinValue(PUSH_BUTTON));
}

// Initialize Hardware
void initHw()
{
    // Initialize GPIO IP
    gpioOpen();

    // Configure LED and pushbutton pins
    selectPinPushPullOutput(GREEN_LED);
    selectPinPushPullOutput(RED_LED);
    selectPinDigitalInput(PUSH_BUTTON);
}

//-----------------------------------------------------------------------------
// Main
//-----------------------------------------------------------------------------

int main(void)
{
    // Initialize hardware
    initHw();

    // Turn off green LED, turn on red LED
    setPinValue(GREEN_LED, 0);
    setPinValue(RED_LED, 1);

    // Wait for PB press
    waitPbPress();

    // Turn off red LED, turn on green LED
    setPinValue(RED_LED, 0);
    setPinValue(GREEN_LED, 1);
}
