all:: foo

clean::
	rm -f foo foo.o

foo: foo.o
	${CC} -o foo foo.o



