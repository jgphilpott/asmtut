hello_world: hello_world.o
	ld -o hello_world hello_world.o
hello_world.o: hello_world.s
	as -o hello_world.o hello_world.s
clean:
	rm *.o hello_world
