# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/elizabethli/cmsc220/chiventure

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elizabethli/cmsc220/chiventure/tests

# Utility rule file for game-state-examples.

# Include the progress variables for this target.
include src/game-state/examples/CMakeFiles/game-state-examples.dir/progress.make

src/game-state/examples/CMakeFiles/game-state-examples: src/game-state/examples/stats_example


game-state-examples: src/game-state/examples/CMakeFiles/game-state-examples
game-state-examples: src/game-state/examples/CMakeFiles/game-state-examples.dir/build.make

.PHONY : game-state-examples

# Rule to build all files generated by this target.
src/game-state/examples/CMakeFiles/game-state-examples.dir/build: game-state-examples

.PHONY : src/game-state/examples/CMakeFiles/game-state-examples.dir/build

src/game-state/examples/CMakeFiles/game-state-examples.dir/clean:
	cd /home/elizabethli/cmsc220/chiventure/tests/src/game-state/examples && $(CMAKE_COMMAND) -P CMakeFiles/game-state-examples.dir/cmake_clean.cmake
.PHONY : src/game-state/examples/CMakeFiles/game-state-examples.dir/clean

src/game-state/examples/CMakeFiles/game-state-examples.dir/depend:
	cd /home/elizabethli/cmsc220/chiventure/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elizabethli/cmsc220/chiventure /home/elizabethli/cmsc220/chiventure/src/game-state/examples /home/elizabethli/cmsc220/chiventure/tests /home/elizabethli/cmsc220/chiventure/tests/src/game-state/examples /home/elizabethli/cmsc220/chiventure/tests/src/game-state/examples/CMakeFiles/game-state-examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/game-state/examples/CMakeFiles/game-state-examples.dir/depend

