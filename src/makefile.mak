PATH=$(PATH);C:\Keil\C51\BIN
CC=VS51.exe
LD=VS51.exe
AS=VS51.exe

TARGET=test
SRCS=test.c,func.c
CFLAGS=OPTIMIZE (9,SPEED) BROWSE DEBUG OBJECTEXTEND TABS (2)


OBJS=$(SRCS:.c=.obj)
SRCS_X=$(SRCS:,= )
OBJS_X=$(SRCS_X:.c=.obj)

.c.obj:
	$(CC) $< $(CFLAGS)
$(TARGET):$(OBJS_X)
	$(CC) $(OBJS)
all:
	$(CC) $< $(CFLAGS)
	$(CC) $(OBJS)
clean:
	del *.obj *.lst *.m51 *.