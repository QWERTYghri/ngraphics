/*
 * /ngraphics header file/
 * Stores important functions and other stuff
 */
 
#ifndef NGRAPHICS_H
#define NGRAPHICS_H
 
#include <ncurses.h>
#include <stdint.h>
#include <math.h>

/* Position = CenterPos + Radius * Vec3(cos(θ), 0, sin(θ))  */
void circle ( int32_t y, int32_t x, int32_t radius )
{	
	for ( int32_t i = 1; i <= 365; i++ )
	{
		x += radius * cos ( i );
		y += radius * sin ( i );
		
		x = ceil ( x );
		y = ceil ( y );
		mvaddch ( y, x, '*' );
	} 
}

#endif /* End */
