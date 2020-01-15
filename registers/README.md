# Registers

A register is a quickly accessible location available to a computer's central processing unit. Most ARM microprocessors come with 16 registers (0-15) each capable of holding a [word of data](https://en.wikipedia.org/wiki/Word_(computer_architecture)). Some of the registers have special purposes such as `R7` which holds the system call number. The registers can be broken into two categories, 'General Purpose' and 'Special Purpose'. A list of all 16 registers is shown below, if you want to know more about registers look [here](https://azeria-labs.com/arm-data-types-and-registers-part-2/).

## General Purpose

Register | Alias | Purpose
--- | --- | ---
R0 | - | General purpose
R1 | - | General purpose
R2 | - | General purpose
R3 | - | General purpose
R4 | - | General purpose
R5 | - | General purpose
R6 | - | General purpose
R8 | - | General purpose
R9 | - | General purpose
R10 | - | General purpose

## Special Purpose

Register | Alias | Purpose
--- | --- | ---
R7 | - | Holds Syscall Number
R11 | FP | Frame Pointer
R12 | IP | Intra Procedural Call
R13 | SP | Stack Pointer
R14 | LR | Link Register
R15 | PC | Program Counter
