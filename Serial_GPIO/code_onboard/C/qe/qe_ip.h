// QE IP Example
// QE IP Library (qe_ip.h)
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

#ifndef QE_H_
#define QE_H_

#include <stdint.h>
#include <stdbool.h>

//-----------------------------------------------------------------------------
// Subroutines
//-----------------------------------------------------------------------------

bool qeOpen();

void enableChannel(uint8_t channel);
void disableChannel(uint8_t channel);
void enableChannelSwap(uint8_t channel);
void disableChannelSwap(uint8_t channel);

void setPosition(uint8_t channel, int32_t position);
int32_t getPosition(uint8_t channel);

void setVelocityTimebase(uint32_t period);
int32_t getVelocity(uint8_t channel);

#endif
