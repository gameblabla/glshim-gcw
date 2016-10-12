CC = mipsel-linux-gcc

CFLAGS = -O0 -g -I./WRAPPER
LDFLAGS =  -lSDL -lGL -ldl -lEGL -lm -lpreload
OUTPUT = example

SOURCES = gears.c
OBJS = ${SOURCES:.c=.o}

${OUTPUT}:${OBJS}
	${CC} -o ${OUTPUT} ${OBJS} ${CFLAGS} ${LDFLAGS} ${DEFINES} 
	
clean:
	rm *.o
	rm ${OUTPUT}
