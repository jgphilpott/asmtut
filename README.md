<p align="center">
  <img width="150" height="150" src="https://i.pinimg.com/originals/00/94/18/009418460183d05cbbff41179436b3eb.gif">
</p>

# Asmtut

[Assembly language](https://en.wikipedia.org/wiki/Assembly_language) is a low-level programming language just one layer above the binary that runs your hardware. It can be produced by compiling a high-level language such as [C](https://en.wikipedia.org/wiki/C_(programming_language))/[C++](https://en.wikipedia.org/wiki/C%2B%2B) or written from scratch.

In this tutorial we are using a [Raspberry Pi](https://www.raspberrypi.org/) with a [ARM microprocessor](https://en.wikipedia.org/wiki/ARM_architecture) and will write a little bit of assembly code from scratch. You dont need to use a Raspberry Pi but **you will need a ARM microprocessor**.

## Content

 - Intro
 - Content
 - Create
 - Compile
 - Execute
 - Comments
 - Sections
 - More Info

## Create

The first thing you should do is create a source file for your code. To do this simply create a file with the `.s` extension. Try typing **`touch myfile.s`** in your terminal. That should generate a file with the given name that you can now open in your preferred text editor.

## Compile

Before we can execute any of the code that's in our source file we need to compile it to an object file and make it executable. Try typing **`as -o myfile.o myfile.s`** in your terminal. The `as -o` indicates that you want to compile a source file to an object file and you must provide the name of the object file with the `.o` extension and the name of the source file with the `.s` extension. Now if you type `ls` in your terminal you should see `myfile.s` and `myfile.o`.

If all that worked fine we can now make our object file executable. To do this type **`ld -o myfile myfile.o`** in your terminal. The `ld -o` indicates that you want to make an executable from an object file and you must provide the name of the executable (no extension necessary) and the name of the object file with the `.o` extension. Now if you type `ls` in your terminal you should see `myfile.s`, `myfile.o` and `myfile`.

## Execute

Finally we can run our executable by typing **`./myfile`** in the terminal.

## Comments

Creating comments in assembly code is simple, just use the `@` symbol.

`@ This is a comment`

For multiline comments the syntax is slightly different, use `/*` and `*/` instead.

```
/*
This is not merely a comment..
it's a multiline comment!
*/
```

## Sections

...

## More Info

### [Derek Banas](https://www.youtube.com/channel/UCwRXb5dUK4cvsHbx-rGzSgw) - [Assembly Language Tutorial](https://www.youtube.com/playlist?list=PLGLfVvz_LVvQu9IwUcpn8KOZsOvoHx8sU)

 - [Assembly Language Tutorial (Part 1)](https://www.youtube.com/watch?v=ViNnfoE56V8&list=PLGLfVvz_LVvQu9IwUcpn8KOZsOvoHx8sU&index=1)
 - [Assembly Language Tutorial (Part 2)](https://www.youtube.com/watch?v=5HILZon7pVE&list=PLGLfVvz_LVvQu9IwUcpn8KOZsOvoHx8sU&index=2)
 - [Assembly Language Tutorial (Part 3)](https://www.youtube.com/watch?v=2ghL_R5CSaI&list=PLGLfVvz_LVvQu9IwUcpn8KOZsOvoHx8sU&index=3)
 - [Assembly Language Tutorial (Part 4)](https://www.youtube.com/watch?v=zj-cGdNpYZ8&list=PLGLfVvz_LVvQu9IwUcpn8KOZsOvoHx8sU&index=4)
