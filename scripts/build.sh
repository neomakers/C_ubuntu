gcc -I ./include -E ./src/main.c -o ./build/main.i
gcc -I ./include -E ./src/data.c -o ./build/data.i
gcc -S ./build/main.i -o ./build/main.s
gcc -S ./build/data.i -o ./build/data.s
gcc -c ./build/main.s -o ./build/main.o
gcc -c ./build/data.s -o ./build/data.o
gcc ./build/main.o ./build/data.o -o ./build/main.out
