# Asmtut

Assembly language is a low-level programming language just one layer above the binary that runs your hardware. It can be produced by compiling a high-level language such as C/C++ or written from scratch.

In this tutorial we are using Raspberry Pi with an ARM microprocessor and will write a little bit of assembly from scratch.

## Create, Compile and Execute

The first thing you should know is how to create an assembly language file. All you need to do is use the `.s` file extension. Try typing **`touch myfile.s`** in your terminal. That should generate a file with the given name that you can now open in your preferred text editor.

Before we can execute any of the code that's in our assembly file we need to compile it to an object file and make it executable. Try typing **`as -o myfile.o myfile.s`** in your terminal. The `as -o` indicates that you want to compile an assembly file to an object file and you must provide the name of the object file with the `.o` extension and the name of the assembly file with the `.s` extension. Now if you type `ls` in your terminal you should see `myfile.s` and `myfile.o`.

If all that worked fine we can now make our object file executable. To do this type **`ld -o myfile myfile.o`** in your terminal. The `ld -o` indicates that you want to make an executable from an object file and you must provide the name of the executable (no extension necessary) and the name of the object file with the `.o` extension. Now if you type `ls` in your terminal you should see `myfile.s`, `myfile.o` and `myfile`.

Finally we can run our executable by typing **`./myfile`** in the terminal.
