PATH=$(PATH);C:\Keil\C51\BIN
CC=VS51.exe
LD=VS51.exe
AS=VS51.exe
CFLAGS = OPTIMIZE (8,SPEED) BROWSE DEBUG OBJECTEXTEND
###################################################
TARGET = test

SRCS = test.c, f1.c, f2.c
INCS = f1.h, f2.h
###################################################
OBJS=$(SRCS:.c=.obj)
SRCS_X=$(SRCS:,= )
OBJS_X=$(SRCS_X:.c=.obj)

.C.OBJ:
	$(CC) $< $(CFLAGS)

$(TARGET):$(OBJS_X) 
	$(CC) $(OBJS)
	@OH51 $(TARGET)

ALL:CLEAN $(TARGET)
CLEAN: 
	del *.obj *.lst *.m51 *.hex