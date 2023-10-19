GCC  = mpic++ -O3
INCLUDE = -I/usr/include/eigen3/ -I./ -I${HOME}/FreeFem-install/ff-petsc/c/include/

all: test2D test3D clean

######################################################

test2D: test2D.o
	$(GCC) test2D.o -o test2D

test2D.o: test2D.cpp
	$(GCC) $(INCLUDE) -c test2D.cpp -o test2D.o

######################################################

test3D: test3D.o
	$(GCC) test3D.o -o test3D

test3D.o: test3D.cpp
	$(GCC) $(INCLUDE) -c test3D.cpp -o test3D.o

######################################################

clean:
	rm *.o
