UNAME := $(shell uname)

ifeq ($(UNAME),Darvin)
	COMPILER=clang++
else
	COMPILER=g++
endif

FLAGS := -I./lib/CPIG
FLAGS += -I./modules
FLAGS += `sdl2-config --cflags --libs`
FLAGS += -lSDL2 -lSDL2_ttf -lSDL2_image -lpthread -lwebp

all:
	$(COMPILER) main.cpp -w -g $(FLAGS) -o main.o

gerador:
	$(COMPILER) main.cpp -w -g $(FLAGS) -o gerador.o

png-fix:
	find imagens -type f -iname '*.png' -exec pngcrush -ow -rem allb -reduce {} \; 

run:
	./main.o

clean:
	rm -rf main.o gerador.o *.dSYM

debug:
	clear && echo "Entrando no programa de Debug GDB...\nDigite:\n'r'     -> Para executar o programa\n'where' -> Para identificar a linha\n'list'  -> Para mostrar o trecho do código\n'q'     -> Para sair" && gdb -q ./main.o
