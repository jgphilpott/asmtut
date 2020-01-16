.text
.global _start
_start:

  MOV R7, #3
  LDR R1, =input
  MOV R2, #10
  SWI 0

  MOV R7, #1
  SWI 0
  
.data
input: .ascii " "
