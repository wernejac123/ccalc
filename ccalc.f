C COMPLEX NUMBER CALUCALTOR

      PROGRAM CCALC
      IMPLICIT NONE
      DOUBLE COMPLEX NUM1,NUM2,ANS
      CHARACTER OP
C OP IS OPERAND

      WRITE(*,*) 'CCALC'
      WRITE(*,*)
      WRITE(*,*) 'ALL NUMBERS ARE DOUBLE COMPLEX (AR,AI)'
      WRITE(*,*) 'HELP ''H'''
      WRITE(*,*)

10    WRITE(*,*) 'OP:'
      READ(*,*) OP

      IF(OP .EQ. 'H') THEN
        CALL HELP()
        GOTO 10
      ELSEIF(OP .EQ. 'Q') THEN
        GOTO 999
      ELSEIF(OP .EQ. 'S') THEN
        WRITE(*,*) 'NUM1'
        READ(*,*) NUM1
        ANS=CDSQRT(NUM1)
      ELSEIF(OP .EQ. '+') THEN
        WRITE(*,*) 'NUM1,NUM2:'
        READ(*,*) NUM1,NUM2
        ANS=NUM1+NUM2
      ELSEIF(OP .EQ. '-') THEN
        WRITE(*,*) 'NUM1,NUM2:'
        READ(*,*) NUM1,NUM2
        ANS=NUM1-NUM2
      ELSEIF(OP .EQ. '/') THEN
        WRITE(*,*) 'NUM1,NUM2:'
        READ(*,*) NUM1,NUM2
        ANS=NUM1/NUM2
      ELSEIF(OP .EQ. '*') THEN
        WRITE(*,*) 'NUM1,NUM2:'
        READ(*,*) NUM1,NUM2
        ANS=NUM1*NUM2
      ELSEIF(OP .EQ. 'E') THEN
        WRITE(*,*) 'NUM1,NUM2:'
        READ(*,*) NUM1,NUM2
        ANS=NUM1**NUM2
      ELSE
        WRITE(*,*) 'INVALID'
        GOTO 10
      ENDIF

      WRITE(*,*) 'ANS=',ANS
      GOTO 10

999   STOP
      END
