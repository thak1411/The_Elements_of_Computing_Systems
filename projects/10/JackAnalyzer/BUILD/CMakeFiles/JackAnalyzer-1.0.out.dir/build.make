# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD

# Include any dependencies generated for this target.
include CMakeFiles/JackAnalyzer-1.0.out.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/JackAnalyzer-1.0.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/JackAnalyzer-1.0.out.dir/flags.make

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.o: CMakeFiles/JackAnalyzer-1.0.out.dir/flags.make
CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.o: /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.o -c /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.cc

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.cc > CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.i

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.cc -o CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.s

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.o: CMakeFiles/JackAnalyzer-1.0.out.dir/flags.make
CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.o: /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.o -c /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.cc

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.cc > CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.i

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.cc -o CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.s

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.o: CMakeFiles/JackAnalyzer-1.0.out.dir/flags.make
CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.o: /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.o -c /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.cc

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.cc > CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.i

CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.cc -o CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.s

# Object files for target JackAnalyzer-1.0.out
JackAnalyzer__1_0_out_OBJECTS = \
"CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.o" \
"CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.o" \
"CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.o"

# External object files for target JackAnalyzer-1.0.out
JackAnalyzer__1_0_out_EXTERNAL_OBJECTS =

Debug/JackAnalyzer-1.0.out: CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackAnalyzer.o
Debug/JackAnalyzer-1.0.out: CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/JackTokenizer.o
Debug/JackAnalyzer-1.0.out: CMakeFiles/JackAnalyzer-1.0.out.dir/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/CompilationEngine.o
Debug/JackAnalyzer-1.0.out: CMakeFiles/JackAnalyzer-1.0.out.dir/build.make
Debug/JackAnalyzer-1.0.out: CMakeFiles/JackAnalyzer-1.0.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Debug/JackAnalyzer-1.0.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/JackAnalyzer-1.0.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/JackAnalyzer-1.0.out.dir/build: Debug/JackAnalyzer-1.0.out

.PHONY : CMakeFiles/JackAnalyzer-1.0.out.dir/build

CMakeFiles/JackAnalyzer-1.0.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/JackAnalyzer-1.0.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/JackAnalyzer-1.0.out.dir/clean

CMakeFiles/JackAnalyzer-1.0.out.dir/depend:
	cd /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD /Users/morgan/Documents/rn/nand2tetris/projects/10/JackAnalyzer/BUILD/CMakeFiles/JackAnalyzer-1.0.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/JackAnalyzer-1.0.out.dir/depend

