#include <REG52.H>
#include"vstrick.h"
#include"f1.h"
#include"f2.h"

void main(void)
{
	int x;
	x = 10;
	x++;
	f1();
	f2();
	P1 ^= 1;
	while (1)
	{
		/* Toggle P1.0 each time we print */
		P1 ^= 0x01; 
	}
}