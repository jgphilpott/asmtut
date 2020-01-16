.text
.global _start
_start:

  MOV R7, #4
  LDR R1, =hello
  MOV R2, #13
  SWI 0

  MOV R7, #1
  SWI 0
  
.data
hello: .ascii "Hello World!\n"
