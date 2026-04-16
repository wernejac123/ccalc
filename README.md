ccalc:

  FORTRAN 77 calculator for complex numbers

  This calculator gets the operator first and then the numbers.

compile:

  linux: just run the shell script (compiles and strips binary)

  FreeDOS:

    C:\DEVEL\WATCOMF\OWSETENV.BAT
    
    WFL *.F (produces CCALC.EXE)

    BUG: as of Apr 5, 2026 there is a bug where my programs are losing precision 
    (calculating numbers as REAL instead of DOUBLEPRECISON). NOTE TO SELF: fix this by using D like 3.0D0 (DOUBLEPRECISION engineering notation) for all numbers
    including input from user). Also DOUBLE COMPLEX is not standard F77 (although it
    appears both Linux and Freedos have it).I may rewrite this to use 2 double
    precision numbers to represent the real and imaginary part, or scrap this project.
