# Sections

An assembly program can be divided into **three sections**; [text](https://github.com/jgphilpott/asmtut/tree/master/sections#text), [data](https://github.com/jgphilpott/asmtut/tree/master/sections#data) and [bss](https://github.com/jgphilpott/asmtut/tree/master/sections#bss).

## text

The text section is used for keeping the actual code and begins with the declaration `.text`. This section must also include a `.global _start` and `_start:` declaration which tells the kernel where the program execution begins, see below.

```
.text
.global _start
_start:
```

## data

The data section is used for declaring initialized data or constants. This data does not change at runtime, see below.

```
.data
```

## bss

The bss section is used for declaring variables, see below.

```
.bss
```
