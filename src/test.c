#include <REG52.H>
#include"vstrick.h"
extern void func(void);
extern void f1(void);
extern int x;
void main(void)
{
	x = 10;
	func();
	f1();
	P1 ^= 1;
	while (1)
	{
		//P1 ^= 0x01; 				/* Toggle P1.0 each time we print */
	}
}