CC = icpc
MPCC = mpicxx -cxx=icpc
OPENMP = -qopenmp
CFLAGS = -g -Wall -O3 -debug 
LIBS =

# If you want to use gcc/g++ to compile the cpp files, you can also use
# the -fopenmp parameter to compile with OpenMP support.
# i.e. g++ -fopenmp helloworld.cpp -o helloworld 

all: laplace


laplace.o: laplace.cpp
	$(CC) -c $(OPENMP) $(CFLAGS) laplace.cpp

laplace: laplace.o
	$(CC) -o laplace $(OPENMP) laplace.o

matrix.o: matrix.cpp
	$(CC) -c $(OPENMP) $(CFLAGS) matrix.cpp

matrix: matrix.o
	$(CC) -o matrix $(OPENMP) matrix.o

clean:
	rm -f *.o $(TARGETS) *.stdout *.txt
