all: process_creation linker_output simple_program

process_creation: process-creation.c
	 gcc process-creation.c -o process_creation

linker_output: file1.c file2.c
	 gcc file1.c file2.c -o linker_output

simple_program: simple-program.c
	 gcc simple-program.c -o simple_program

run: run_creation run_linker run_loader

run_creation: process_creation
	 ./process_creation
 
run_linker: linker_output
	 ./linker_output

run_loader: simple_program
	 ./simple_program

clean:
	 rm -f process_creation linker_output simple_program

