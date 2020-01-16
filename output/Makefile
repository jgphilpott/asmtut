output: output.o
	ld -o output output.o
output.o: output.s
	as -o output.o output.s
clean:
	rm *.o output
