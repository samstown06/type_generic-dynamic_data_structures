all: output

output: main.o lib.o
	gcc main.o lib.o -o Build/output

main.o: src/main.c
	gcc -c src/main.c -o Build/main.o

lib.o: src/lib.c
	gcc -c src/lib.c -o Build/lib.o
clean:
	rm *.o output
