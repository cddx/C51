PATH=$(PATH);C:\Keil\C51\BIN
CC=VS51.exe
LD=VS51.exe
AS=VS51.exe

TARGET=test
SRCS=test.c,func.c,f1.c

CFLAGS=OPTIMIZE (8,SPEED) BROWSE DEBUG OBJECTEXTEND

###################################################
OBJS=$(SRCS:.c=.obj)
SRCS_X=$(SRCS:,= )
OBJS_X=$(SRCS_X:.c=.obj)

.c.obj:
	$(CC) $< $(CFLAGS)
$(TARGET):$(OBJS_X)
	$(CC) $(OBJS)
	@OH51 $(TARGET)
all:clean
	
clean:
	del *.obj *.lst *.m51 *.