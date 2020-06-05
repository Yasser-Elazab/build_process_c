# _*_ MakeFile _*_

#This is called a rule or a recipe for make
#target: dependency
	# actions

# dependency: comes from the dependency tree (Direct Acyclic Graph) and it means that depends on the existance and consistancy of these files 

# in this simple program, we have four files external.c, external.h, main.c, main.h

# external.c				  external.h				  main.c   			       main.h
#    |			          _______/\_______     			    |	   	         _______/
#    |			      ___/			      \___			    |		   _____/
# external.i ________/				          \__________ main.i _____/
#    |													    |
#    |													    |
# external.s											  main.s 
# 	 |													    |
# 	 |													    |
# external.o											  main.o											   lib_std.o
#  	  \__________________									|								   __________________/
#  	  				     \_______________					|				   _______________/
#  	  					   			     \________		    |		   _______/
#  	  						 			     	  \______ a.exe ______/

# the first target found in makefile gets excuted when "make" is invoked without 
all: main 	# if we generate multiple executables(multiple treas), we make them the dependencies for the target "all" 

main_obj = external.o main.o

# a target can be specified by typing "make + target"
# make main
main: $(main_obj)
	gcc -o main $(main_obj) -l m
# or make external.o
external.o: external.s
	gcc -c -o external.o external.s
# ...etc.
external.s: external.i
	gcc -S -o external.s external.i

external.i: external.c external.h
	gcc -E -o external.i external.c

main.o: main.s
	gcc -c -o main.o main.s

main.s: main.i
	gcc -S -o main.s main.i

main.i: main.c main.h external.h
	gcc -E -o main.i main.c