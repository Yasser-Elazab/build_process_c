# build_process_c
The BUILD process of src files in C using GNU toolchain

gcc is a cross compiler meaning it can generate code for other platforms and targets. 
"Other" means other than the host machine in which the code is being developed.

The build process of c src files requires handling of these four processes
    1- Preprocessing    >>>     CCP
    2- Compiling        >>>     CC
    3- Assembling       >>>     AS
    4- Linking          >>>     ld

When performing "gcc main.c" command
    1- The previous for steps are being executed
    2- an executable file is generated "a.exe"

Uncomment "test_code_1" and comment "test_code_2" in "main.c" and examine the following command in cmd window. // make sure to configure gcc correctly before begining 
>> gcc main.c <!-- This cmd builds the c src file and generates a.out or a.exe -->
>> gcc -o main.exe main.c <!-- This cmd builds the c src file and generates main.exe -->

Preprocessing is about the following for each src file
    1- Interpreting preprocessor directives
    2- Including header files
    3- Remove comments
    4- Expand inlines and macros

Uncomment "test_code_1" and comment "test_code_2" in "main.c" and examine the following command in cmd window. // make sure to configure gcc correctly before begining 
>> gcc -E -o main.i main.c <!-- Checkout main.i to see the how the output looks like -->

Compiling is about the following for each src file
    1- Performs syntactic and semantic checks for errors
    2- Applys different levels optimaizations if requested
    3- Converts the output of the preprocessing phase into assembly code that's understood by a specific target processor such as ARM, Intel ...etc.
    4- Generates an assembly file ".s file" for each src file and feed the output to the assembler

Uncomment "test_code_1" and comment "test_code_2" in "main.c" and examine the following command in cmd window. // make sure to configure gcc correctly before begining
>> gcc -S -o main.s main.i <!-- Checkout main.s to see the how the output looks like -->

Assembling is about the following for each src file
    1- Converts the assembly code to machine language opcodes
    2- Generates an object file ".o file" for each src file and feed the output to the linker
    3- Each object file has a table which contains 
        a- Name, type and relative address of the global variables and functions
        b- List of imported symbols (external functions and variables)

Uncomment "test_code_1" and comment "test_code_2" in "main.c" and examine the following command in cmd window. // make sure to configure gcc correctly before begining
>> gcc -c -o main.o main.s <!-- Checkout main.o to see the how the output looks like -->

Linking is about the following for ALL of the src files
    1- Links a collection of object file(s) generated by the assembler and the archived libraries as input and combines them to produce ONE object file or ONE executable file
    2- Takes all symbol table from all object files generated by the assembler, libraries and std c library and solve the cross module references between these object files
    3- In case of a single src file, it implicitly links the src file with the appropriate functions from the c std library
    4- Two types of linking, static and dynamic

Uncomment "test_code_1" and comment "test_code_2" in "main.c" and examine the following command in cmd window. // make sure to configure gcc correctly before begining
>> gcc main.o
>> gcc -save-temps main.c <!-- This command compiles, assembles, linkes the src file and generates the final executable image. It also saves all intermediate files generated by each step of the build process -->

If we have multiple src files, we need to provide an object file per each src file for the linker to generate the final image

Uncomment "test_code_2" and comment "test_code_1" in "main.c" and examine the following command in cmd window. // make sure to configure gcc correctly before begining
>> gcc -save-temps *.c <!-- This command compiles, assembles, linkes all files with a .c extenssion and generates the final executable image. It also saves all intermediate files generated by each of the build process for each src file -->

GNU toolchain provides several tools to deal with object files and interpret their content. One example is "objdump"
>> objdump -d main.o <!-- Disassemble the object file and generated the correposning assembly code -->
>> objdump -s main.o <!-- Generates the data section found in the object file -->
>> objdump <!-- Lists all the possible commands for objdump tool -->