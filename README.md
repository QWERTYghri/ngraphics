nGraphics
===============

About
---------------
Ngraphics is a library based of the Borland graphics library. It uses
ncurses to draw basic shapes such as circles, lines, arcs, and more.

Graphics can be drawn to `stdscr` or if specified, through a specific window.
You're required to refresh the window once the graphic has been drawn.

No initialization is needed because, well you have to do it yourself through ncurses
This just covers printing out those graphics along with coloring.

No fancy stuff like using different characters for steepness in lines is used. Why? Because
I'm lazy.

The library includes mostly all the BGI graphics functions, such as `circle` and `line`.

Example Programs
----------------
An example program showing what the library can do is located in uTest.

Installation
------------
Use the make program to compile the program into a library. It outputs both a shared library and a static library.

To install the shared library, run the following:

	make
	sudo make install

To uninstall the shared library, run the following:

	sudo make uninstall
