# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pavel/Tetris-Online

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pavel/Tetris-Online

# Include any dependencies generated for this target.
include CMakeFiles/Tetris_Online.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Tetris_Online.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Tetris_Online.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tetris_Online.dir/flags.make

CMakeFiles/Tetris_Online.dir/src/main.c.o: CMakeFiles/Tetris_Online.dir/flags.make
CMakeFiles/Tetris_Online.dir/src/main.c.o: src/main.c
CMakeFiles/Tetris_Online.dir/src/main.c.o: CMakeFiles/Tetris_Online.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pavel/Tetris-Online/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Tetris_Online.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Tetris_Online.dir/src/main.c.o -MF CMakeFiles/Tetris_Online.dir/src/main.c.o.d -o CMakeFiles/Tetris_Online.dir/src/main.c.o -c /home/pavel/Tetris-Online/src/main.c

CMakeFiles/Tetris_Online.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Tetris_Online.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pavel/Tetris-Online/src/main.c > CMakeFiles/Tetris_Online.dir/src/main.c.i

CMakeFiles/Tetris_Online.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Tetris_Online.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pavel/Tetris-Online/src/main.c -o CMakeFiles/Tetris_Online.dir/src/main.c.s

CMakeFiles/Tetris_Online.dir/src/tetris.c.o: CMakeFiles/Tetris_Online.dir/flags.make
CMakeFiles/Tetris_Online.dir/src/tetris.c.o: src/tetris.c
CMakeFiles/Tetris_Online.dir/src/tetris.c.o: CMakeFiles/Tetris_Online.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pavel/Tetris-Online/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Tetris_Online.dir/src/tetris.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Tetris_Online.dir/src/tetris.c.o -MF CMakeFiles/Tetris_Online.dir/src/tetris.c.o.d -o CMakeFiles/Tetris_Online.dir/src/tetris.c.o -c /home/pavel/Tetris-Online/src/tetris.c

CMakeFiles/Tetris_Online.dir/src/tetris.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Tetris_Online.dir/src/tetris.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pavel/Tetris-Online/src/tetris.c > CMakeFiles/Tetris_Online.dir/src/tetris.c.i

CMakeFiles/Tetris_Online.dir/src/tetris.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Tetris_Online.dir/src/tetris.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pavel/Tetris-Online/src/tetris.c -o CMakeFiles/Tetris_Online.dir/src/tetris.c.s

# Object files for target Tetris_Online
Tetris_Online_OBJECTS = \
"CMakeFiles/Tetris_Online.dir/src/main.c.o" \
"CMakeFiles/Tetris_Online.dir/src/tetris.c.o"

# External object files for target Tetris_Online
Tetris_Online_EXTERNAL_OBJECTS =

Tetris_Online: CMakeFiles/Tetris_Online.dir/src/main.c.o
Tetris_Online: CMakeFiles/Tetris_Online.dir/src/tetris.c.o
Tetris_Online: CMakeFiles/Tetris_Online.dir/build.make
Tetris_Online: CMakeFiles/Tetris_Online.dir/compiler_depend.ts
Tetris_Online: CMakeFiles/Tetris_Online.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/pavel/Tetris-Online/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Tetris_Online"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tetris_Online.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tetris_Online.dir/build: Tetris_Online
.PHONY : CMakeFiles/Tetris_Online.dir/build

CMakeFiles/Tetris_Online.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tetris_Online.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tetris_Online.dir/clean

CMakeFiles/Tetris_Online.dir/depend:
	cd /home/pavel/Tetris-Online && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/Tetris-Online /home/pavel/Tetris-Online /home/pavel/Tetris-Online /home/pavel/Tetris-Online /home/pavel/Tetris-Online/CMakeFiles/Tetris_Online.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Tetris_Online.dir/depend

