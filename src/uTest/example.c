#include <ngraphics.h>

int main ( void )
{
	initscr ();
	cbreak ();
	noecho ();
	nonl ();
	
	circle ( 40, 20, 5 );
	refresh ();
	
	getch ();
	endwin ();

	return 0;
}
