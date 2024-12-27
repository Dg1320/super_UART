// QE IP Library Registers
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
// Device includes, defines, and assembler directives
//-----------------------------------------------------------------------------

#ifndef QE_REGS_H_
#define QE_REGS_H_

#define OFS_CONTROL       0
#define OFS_PERIOD        1
#define OFS_POSITION0     4
#define OFS_VELOCITY0     5
#define OFS_POSITION1     6
#define OFS_VELOCITY1     7

#define QE_SPAN_IN_BYTES 32

#endif

