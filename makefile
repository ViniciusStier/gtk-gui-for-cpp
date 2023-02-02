TARGET = app-pass-firefox
GTKFLAGS = `pkg-config --cflags --libs gtkmm-3.0`
CCFLAGS = -Wall -g -MMD
CC = g++ -std=c++17
LD = g++
FLAGS = ${CCFLAGS} ${GTKFLAGS}
OBJS = main.cpp pass-firefox.cpp

${TARGET}: ${OBJS}
	${LD} -o ${TARGET} ${OBJS} ${GTKFLAGS}
	./${TARGET}
clear:
	rm ∗.o *.d

# main.o: main.cpp
# 	${CC} -o main.o main.cpp ${FLAGS}

# pass-firefox.o: pass-firefox.cpp 
# 	${CC} -o pass-firefox.o pass-firefox.cpp ${FLAGS}

.PHONY: clear
