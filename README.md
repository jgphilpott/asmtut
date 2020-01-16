<p align="center">
  <img width="150" height="150" src="https://github.com/jgphilpott/asmtut/blob/master/media/icon.gif">
</p>

# Intro

[Assembly language](https://en.wikipedia.org/wiki/Assembly_language) is a low-level programming language just one layer above the binary that runs your hardware. It can be produced by compiling a high-level language such as [C](https://en.wikipedia.org/wiki/C_(programming_language))/[C++](https://en.wikipedia.org/wiki/C%2B%2B) or written from scratch. In this tutorial we are using a [Raspberry Pi](https://www.raspberrypi.org/) with a [ARM microprocessor](https://en.wikipedia.org/wiki/ARM_architecture) and will write a little bit of assembly code from scratch. You dont need to use a Raspberry Pi but **you will need a ARM microprocessor**.

It's true that assembly language is somewhat obsolete but knowing at least the basics does have some benefits. It removes a lot of the mystery around how high-level languages work and brings you closer to the [physical layer](https://en.wikipedia.org/wiki/Physical_layer). It’s also a good character building exercise that gives you a greater appreciation for the pain that other developers have gone through before you!

I think every senior developer should write at least a simple 'Hello World!' application in assembly. If you haven't made that rite of passage yet but are interested then your in the right place! That's exactly what this tutorial is going to teach.

# Content

 - [Intro](https://github.com/jgphilpott/asmtut#intro)
 - [Content](https://github.com/jgphilpott/asmtut#content)
 - [Getting Started](https://github.com/jgphilpott/asmtut#getting-started)
   - [Instructions]()
   - [Registers]()
   - [System Calls]()
 - [Step One]()
   - [Compile]()
   - [Execute]()
 - [Step Two]()
 - [Step Three]()
 - [Conclusion]()

# Getting Started

The first thing you should do is create a source file for your code. To do this simply create a file with the `.s` extension. Try typing **`touch myfile.s`** in your terminal. That should generate a file with the given name that you can now open in your preferred text editor.

The first thing to know is that assembly programs are divided into sections. There are **three possible sections** but let's start with the main one which is called 'text'. The text section is used for keeping the actual code and begins with the declaration `.text`. This section must also include a `.global _start` and `_start:` declaration which tells the kernel where the program execution begins, see below. If you want to know more about sections take a look [here](https://github.com/jgphilpott/asmtut/tree/master/sections#sections).

```
.text
.global _start
_start:
```

Were off to a good start but this code won't execute yet because the `_start:` block cant be empty. To make this code execute we first need to know a little bit about [instructions](https://github.com/jgphilpott/asmtut#instructions), [registers](https://github.com/jgphilpott/asmtut#registers) and [system calls](https://github.com/jgphilpott/asmtut#system-calls).

## Instructions

Instructions are short **keywords with predefined behavior**, the most common one is `MOV` which is used for moving data into registers. To see a short list of common instructions take a look [here](https://github.com/jgphilpott/asmtut/tree/master/instructions#instructions).

## Registers

A register is a quickly accessible location available to a computer's central processing unit. Most ARM microprocessors come with **16 registers** (0-15) each capable of holding a [word of data](https://en.wikipedia.org/wiki/Word_(computer_architecture)). Some of the registers have special purposes such as `R7` which holds the system call number. To see a full list take a look [here](https://github.com/jgphilpott/asmtut/tree/master/registers#registers).

## System Calls

System calls are APIs for the interface between the user space and the kernel space. There are **six main system calls for the [Linux kernel](https://en.wikipedia.org/wiki/Linux_kernel)**. For a list of the call numbers and their associated actions take a look [here](https://github.com/jgphilpott/asmtut/tree/master/system#system-calls).

# Step One

To get things rolling lets begin with a program that just starts and then exits immediately. To do this were going to add two lines of code. The first line is going to be an instruction to move (`MOV`) the value `#1` into register seven (`R7`). As mentioned above `R7` is a register with a special purpose, it holds the system call number. So by setting the value of `R7` to `#1` we are telling the kernel that the action we want to perform is 'exit'.

The next line of code is a software interrupt (`SWI`) which causes the program to exit because the system call is set to `#1`. Because these two lines of code are part of the `_start:` block they need to be indented two spaces. Your code should now look something like this:

```
.text
.global _start
_start:
  MOV R7, #1
  SWI 0
```

## Compile

This code is now valid and will execute but before we can do that we need to compile it to an object file and make it executable. Try typing **`as -o myfile.o myfile.s`** in your terminal. The `as -o` indicates that you want to compile a source file to an object file and you must provide the name of the object file with the `.o` extension and the name of the source file with the `.s` extension. Now if you type `ls` in your terminal you should see `myfile.s` and `myfile.o`.

If all that worked fine we can now make our object file executable. To do this type **`ld -o myfile myfile.o`** in your terminal. The `ld -o` indicates that you want to make an executable from an object file and you must provide the name of the executable (no extension necessary) and the name of the object file with the `.o` extension. Now if you type `ls` in your terminal you should see `myfile.s`, `myfile.o` and `myfile`.

If you want, you can create a [Makefile](https://opensource.com/article/18/8/what-how-makefile) to help simplify the compiling process but I won't go into detail about that now.

## Execute

Finally we can run our executable by typing **`./myfile`** in the terminal, if you don't see any error message then everything worked!

# Step Two

Now it's time to generate some output. Do do this let's start by making our first instruction to set the value of `R7` (the system call) to `#4`. This indicates that we want to 'write'.

Next let's load (`LDR`) our message into register one (`R1`) and make it equal to the variable name 'hello'. Unfortunately it's not sufficient to merely load our message we must also declare the length of this message. So to do that let's set the value of `R2` to `#13` and end this block of code using the software interrupt.

Not done quite yet, we also need to exit the program (just like we did in step one) and define the value of 'hello' in our data section. At the bottom of the file add the `.data` section and set the value of 'hello' to the ASCII string `"Hello World!\n"`. The final product should look similar to the code below.

```
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
```

Now that we've made changes to the source file were going to need to [recompile](https://github.com/jgphilpott/asmtut#compile) before we [execute](https://github.com/jgphilpott/asmtut#execute) if we want to see the changes take effect. If you see "Hello World!" printed in the terminal the program execution was a success!

**Note:** If you want to add [comments](https://github.com/jgphilpott/asmtut/tree/master/comments#comments) to the code at any point you can do that using the `@` symbol.

# Step Three

...

# Conclusion

...
