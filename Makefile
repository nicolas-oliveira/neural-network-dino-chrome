install:
	cd src && $(MAKE)

run:
	cd src && make && ./main.o

clean:
	cd src && $(MAKE) clean

debug:
	cd src && $(MAKE) debug