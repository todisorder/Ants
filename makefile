Version=04
OBJ=AntsIBM$(Version).o
TESTES_OBJS=Testes.o Dados.o Tridiagonal.o Vectores.o Solver_SCL.o 
CFLAGS=-Wall -g

antsibm$(Version):$(OBJ)
	clang++ $(CFLAGS) -o antsibm$(Version) $(OBJ) -lm

testes:$(TESTES_OBJS)
	clang++ $(CFLAGS) -o testes $(TESTES_OBJS) -lm
clean:
	rm -f *.o;
	rm -f antsibm$(Version);
