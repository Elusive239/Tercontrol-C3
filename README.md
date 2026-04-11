TERCONTROL C3 (Version 0.7.11) BINDINGS
====

## DESCRIPTION

[Tercontrol](https://github.com/ZackeryRSmith/tercontrol.git) bindings in [C3](https://c3-lang.org/)!

Thanks Skunky for reminding me to update this!

## TO USE
### prerequisite
You *must* have a C compiler installed!

1. Add the "tercontrol.c3l" folder to your C3 projects "lib" folder (or equivalent, see included project.json).
2. Add "tc" to your project.json's list of dependencies!

Now you can import the "tc" module anywhere in your C3 project to use tercontrol!

## NOTE

### tc_ prefixes
all functions from tercontrol are imported without the "tc_" prefix. this is because when calling these 
functions in a project, you are already required to prefix the functions with "tc::", so it felt odd leaving the old prefix in.
