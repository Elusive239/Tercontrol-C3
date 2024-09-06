TERCONTROL C3 BINDINGS
====

## DESCRIPTION

[Tercontrol](https://github.com/ZackeryRSmith/tercontrol.git) bindings in [C3](https://c3-lang.org/)! with some minor additions.

tercontrol is normally used as a header only library, however I have converted it into a .c file for compilations purposes. it is located here in [csources](/csource/tercontrol.c).

includes:
	
	main.c3 -> a test file that just lets you scroll around your terminal and see 
	the coordinates of the mouse.

	tercontrol.c3 -> the actual bindings!

## TO USE

1. Add the "tercontrol.c" file to your C3 project under "csources".
2. Add the "tercontrol.c3" to your projects "src" folder.

Now you can import the "tc3" module anywhere in your C3 project to use tercontrol!

## ADDITIONS

	tc_printn macro.

Just prints a newline character using the "tc_print()" function after the passed in text.

	tc_printf, tc_printfn macros. 

They make use of the builtin C3 formatter from std::io to print like "printf" does, but using "tc_print()"! 
tc_printfn just prints a newline character afterwards.

## NOTES

Currently, when setting the C3 optimization level beyond 0, everything breaks. Not sure why yet!

## DEPENDENCIES

C Dependencies:

[tercontrol](https://github.com/ZackeryRSmith/tercontrol.git) (Obviously...)

C3 Dependencies:

[std-lib](https://c3-lang.org/references/docs/stdlib_refcard/)