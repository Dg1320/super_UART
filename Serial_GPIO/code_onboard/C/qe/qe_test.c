// QE IP Example, qe.c
// QE Shell Command
// Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: Xilinx XUP Blackboard

// Hardware configuration:
// 
// AXI4-Lite interface:
//  Mapped to offset of 0x10000
// 
// QE 0 and 1 interface:
//   GPIO[11-10] are used for QE 0 inputs
//   GPIO[9-8] are used for QE 1 inputs

//-----------------------------------------------------------------------------

#include <stdlib.h>          // EXIT_ codes
#include <stdio.h>           // printf
#include <stdbool.h>         // true
#include <unistd.h>          // usleep
#include "qe_ip.h"           // QE IP library

int main(int argc, char* argv[])
{
    if (!qeOpen())
    {
        printf("Error opening QE\n");
        return EXIT_FAILURE;
    }

    enableChannel(0);
    setPosition(0, 0);
    setVelocityTimebase(10000000); // 100 ms
    while(true)
    {
        printf("%20d, %20d\n", getPosition(0), getVelocity(0));
        usleep(100000);
    }
    return EXIT_SUCCESS;
}

