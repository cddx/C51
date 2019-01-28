# makefile: The makefile for using KEIL C51 Toolchain in Microsoft Visual Studio .NET 2005 using NMAKE
# project type
#
# By Jonathan Kaufmann
# May 29, 2007

# Adjust this to point to your KEIL Bin installation as well as all other binaries used by this Makefile
# for converting to IIC (EEPROM) file
PATH=$(PATH);C:\Keil\C51\BIN\;

#VS51.EXE is my wrapper that takes all output from the C51.exe, A51.exe and BL51.exe tools and formats
#it appropriately for VS2005 (probably 2003 too) so it will recognize errors and warnings and so you can
#dbl-click and jump to file/line of error locations.
#It detects what type of tool you want based on the first argument.  If first arg is a .c file, then C51.exe -
#if .a51, then A51.exe - and if .obj, then BL51.exe - source is included and may be changed for different
#tools or conditions
#LD=VS51.EXE
#CC=VS51.EXE
#AS=VS51.EXE

test.obj:test.c
	vs51.exe test.c
