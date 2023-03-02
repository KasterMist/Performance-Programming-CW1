SRC=MD.c control.c util.c 
OBJ=$(SRC:.c=.o)
CC=gcc
# CFLAGS=  -g -O0 -check=uninit -check-pointers:rw -no-vec
# CFLAGS=  -O2 -qopt-report=5 -qopt-report-annotate=html -qopt-report-file=output.html
# CFLAGS=  -O2 -inline-level=0 -no-unroll-aggressive -fno-builtin -fno-alias
# CFLAGS=  -ipo -Ofast
# CFLAGS=  -ipo -O3 -no-prec-div -fp-model fast=2 
# CFLAGS=  -O2 -inline-level=2 -no-unroll-aggressive -fno-alias -qopt-report=5 -qopt-report-annotate=html 
CFLAGS= -Ofast


all: MD

MD: $(OBJ)
	$(CC) $(CFLAGS)  -o $@  $(OBJ) -lm


output.dat: MD input.dat
	./MD


clean:
	rm -f MD $(OBJ) 

$(OBJ) : coord.h Makefile


