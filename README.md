<p align="center">
  <img width="150" height="150" src="https://github.com/jgphilpott/asmtut/blob/master/media/icon.gif">
</p>

# Intro

[Assembly language](https://en.wikipedia.org/wiki/Assembly_language) is a low-level programming language just one layer above the binary that runs your hardware. It can be produced by compiling a high-level language such as [C](https://en.wikipedia.org/wiki/C_(programming_language))/[C++](https://en.wikipedia.org/wiki/C%2B%2B) or written from scratch. In this tutorial we are using a [Raspberry Pi](https://www.raspberrypi.org/) with a [ARM microprocessor](https://en.wikipedia.org/wiki/ARM_architecture) and will write a little bit of assembly code from scratch. You dont need to use a Raspberry Pi but **you will need a ARM microprocessor**.

It's true that assembly language is somewhat obsolete but knowing at least the basics does has some benefits. It's like looking under the hood of a language, it removes a lot of the mystery around how high-level languages work and brings you closer to the hardware. It’s also a good character building exercise that gives you a greater appreciation for the pain that other developers have gone through before you!

I think every senior developer should write at least a simple ‘Hello World!’ application in assembly. If you haven't made that rite of passage yet but are interested then your in the right place! That's exactly what this tutorial is going to show you how to do.

# Content

 - [Intro](https://github.com/jgphilpott/asmtut#intro)
 - [Content](https://github.com/jgphilpott/asmtut#content)
 - [Create](https://github.com/jgphilpott/asmtut#create)
 - [Compile](https://github.com/jgphilpott/asmtut#compile)
 - [Execute](https://github.com/jgphilpott/asmtut#execute)
 - [Comments](https://github.com/jgphilpott/asmtut/tree/master/comments#comments)
   - [Singleline](https://github.com/jgphilpott/asmtut/tree/master/comments#singleline)
   - [Multiline](https://github.com/jgphilpott/asmtut/tree/master/comments#multiline)
 - [Sections](https://github.com/jgphilpott/asmtut/tree/master/sections#sections)
   - [text](https://github.com/jgphilpott/asmtut/tree/master/sections#text)
   - [data](https://github.com/jgphilpott/asmtut/tree/master/sections#data)
   - [bss](https://github.com/jgphilpott/asmtut/tree/master/sections#bss)
 - [More Info](https://github.com/jgphilpott/asmtut/tree/master/more_info#more-info)
   - [Derek Banas - Assembly Language Tutorial](https://github.com/jgphilpott/asmtut/tree/master/more_info#derek-banas---assembly-language-tutorial)

# Create

The first thing you should do is create a source file for your code. To do this simply create a file with the `.s` extension. Try typing **`touch myfile.s`** in your terminal. That should generate a file with the given name that you can now open in your preferred text editor.

# Compile

Before we can execute any of the code that's in our source file we need to compile it to an object file and make it executable. Try typing **`as -o myfile.o myfile.s`** in your terminal. The `as -o` indicates that you want to compile a source file to an object file and you must provide the name of the object file with the `.o` extension and the name of the source file with the `.s` extension. Now if you type `ls` in your terminal you should see `myfile.s` and `myfile.o`.

If all that worked fine we can now make our object file executable. To do this type **`ld -o myfile myfile.o`** in your terminal. The `ld -o` indicates that you want to make an executable from an object file and you must provide the name of the executable (no extension necessary) and the name of the object file with the `.o` extension. Now if you type `ls` in your terminal you should see `myfile.s`, `myfile.o` and `myfile`.

# Execute

Finally we can run our executable by typing **`./myfile`** in the terminal.
