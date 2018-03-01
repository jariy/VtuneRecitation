CC = g++
MPCC = mpicxx -cxx=g++
OPENMP = -fopenmp
CFLAGS = -Wall -g -O3
LIBS =

TARGETS:laplace laplace_omp

# If you want to use gcc/g++ to compile the cpp files, you can also use
# the -fopenmp parameter to compile with OpenMP support.
# i.e. g++ -fopenmp helloworld.cpp -o helloworld 

all: laplace laplace_omp

laplace.o: laplace.cpp
	$(CC) -c $(OPENMP) $(CFLAGS) laplace.cpp

laplace: laplace.o
	$(CC) -o laplace $(OPENMP) laplace.o

laplace_omp.o: laplace_omp.cpp
	$(CC) -c $(OPENMP) $(CFLAGS) laplace_omp.cpp

laplace_omp: laplace_omp.o
	$(CC) -o laplace_omp $(OPENMP) laplace_omp.o
	
clean:
	rm -f *.o $(TARGETS) *.stdout *.txt
