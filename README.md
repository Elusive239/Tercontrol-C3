TERCONTROL C3 BINDINGS
====
[Tercontrol](https://github.com/ZackeryRSmith/tercontrol.git) bindings in [C3](https://c3-lang.org/)! with some minor additions.

tercontrol is normally used as a header only library, however I have converted it into a .c file for compilations purposes. it is located here in [csources](/csource/tercontrol.c).

includes:
	
	main.c3 -> a test file that just lets you scroll around your terminal and see 
	the coordinates of the mouse.

	tercontrol.c3 -> the actual bindings! with some bonus functions

C Dependencies:

[tercontrol](https://github.com/ZackeryRSmith/tercontrol.git) (Obviously...)

C3 Dependencies:

[std-lib](https://c3-lang.org/references/docs/stdlib_refcard/)