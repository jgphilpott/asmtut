.text

.global _start

_start:
  @ Some code here.
  MOV R0, #65
  MOV R7, #1

SWI 0
