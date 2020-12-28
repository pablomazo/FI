FC=gfortran
FFLAGS= -O3
LIBNAME=libFI.a

SOURCE=$(wildcard *.f90)
OBJECTS=$(SOURCE:%.f90=%.o)

lib: $(OBJECTS)
	rm -f $(LIBNAME)
	ar cvr  $(LIBNAME) $^

clean:
	rm -f *.a *.mod *.out *.o

%.o: %.f90
	$(FC) $(FFLAGS) -c $< -o $@

