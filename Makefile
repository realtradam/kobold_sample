
.PHONY: all build run raylib

all: build run

raylib:
	(cd raylib/src; make)

build: raylib
	cc main.c -Iraygui/src -Lraylib/src/raylib -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o game

run: 
	./game
