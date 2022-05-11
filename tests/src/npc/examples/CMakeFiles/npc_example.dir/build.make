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

# Include any dependencies generated for this target.
include src/npc/examples/CMakeFiles/npc_example.dir/depend.make

# Include the progress variables for this target.
include src/npc/examples/CMakeFiles/npc_example.dir/progress.make

# Include the compile flags for this target's objects.
include src/npc/examples/CMakeFiles/npc_example.dir/flags.make

src/npc/examples/CMakeFiles/npc_example.dir/npc_example.c.o: src/npc/examples/CMakeFiles/npc_example.dir/flags.make
src/npc/examples/CMakeFiles/npc_example.dir/npc_example.c.o: ../src/npc/examples/npc_example.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/npc/examples/CMakeFiles/npc_example.dir/npc_example.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/npc_example.dir/npc_example.c.o   -c /home/elizabethli/cmsc220/chiventure/src/npc/examples/npc_example.c

src/npc/examples/CMakeFiles/npc_example.dir/npc_example.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/npc_example.dir/npc_example.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/src/npc/examples/npc_example.c > CMakeFiles/npc_example.dir/npc_example.c.i

src/npc/examples/CMakeFiles/npc_example.dir/npc_example.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/npc_example.dir/npc_example.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/src/npc/examples/npc_example.c -o CMakeFiles/npc_example.dir/npc_example.c.s

# Object files for target npc_example
npc_example_OBJECTS = \
"CMakeFiles/npc_example.dir/npc_example.c.o"

# External object files for target npc_example
npc_example_EXTERNAL_OBJECTS =

src/npc/examples/npc_example: src/npc/examples/CMakeFiles/npc_example.dir/npc_example.c.o
src/npc/examples/npc_example: src/npc/examples/CMakeFiles/npc_example.dir/build.make
src/npc/examples/npc_example: src/action_management/libaction_management.a
src/npc/examples/npc_example: src/battle/libbattle.a
src/npc/examples/npc_example: src/cli/libcli.a
src/npc/examples/npc_example: src/common/libcommon.a
src/npc/examples/npc_example: src/custom-actions/libcustom-actions.a
src/npc/examples/npc_example: src/game-state/libgame-state.a
src/npc/examples/npc_example: src/libobj/liblibobj.a
src/npc/examples/npc_example: src/quests/libquests.a
src/npc/examples/npc_example: src/sound/libsound.a
src/npc/examples/npc_example: src/npc/libnpc.a
src/npc/examples/npc_example: src/openworld/libopenworld.a
src/npc/examples/npc_example: src/playerclass/libplayerclass.a
src/npc/examples/npc_example: src/skilltrees/libskilltrees.a
src/npc/examples/npc_example: src/ui/libui.a
src/npc/examples/npc_example: src/wdl/libwdl.a
src/npc/examples/npc_example: src/custom-scripts/libcustom-scripts.a
src/npc/examples/npc_example: src/cli/libcli.a
src/npc/examples/npc_example: src/common/libcommon.a
src/npc/examples/npc_example: src/game-state/libgame-state.a
src/npc/examples/npc_example: src/cli/libcli.a
src/npc/examples/npc_example: src/common/libcommon.a
src/npc/examples/npc_example: src/game-state/libgame-state.a
src/npc/examples/npc_example: src/action_management/libaction_management.a
src/npc/examples/npc_example: src/ui/libui.a
src/npc/examples/npc_example: /usr/lib/x86_64-linux-gnu/libncursesw.so
src/npc/examples/npc_example: /usr/lib/x86_64-linux-gnu/libformw.so
src/npc/examples/npc_example: src/quests/libquests.a
src/npc/examples/npc_example: src/wdl/libwdl.a
src/npc/examples/npc_example: src/libobj/liblibobj.a
src/npc/examples/npc_example: src/npc/libnpc.a
src/npc/examples/npc_example: src/battle/libbattle.a
src/npc/examples/npc_example: src/playerclass/libplayerclass.a
src/npc/examples/npc_example: src/skilltrees/libskilltrees.a
src/npc/examples/npc_example: /usr/lib/x86_64-linux-gnu/libzip.so
src/npc/examples/npc_example: /usr/lib/x86_64-linux-gnu/libjson-c.so
src/npc/examples/npc_example: /usr/lib/x86_64-linux-gnu/liblua5.3.so
src/npc/examples/npc_example: /usr/lib/x86_64-linux-gnu/libm.so
src/npc/examples/npc_example: src/npc/examples/CMakeFiles/npc_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable npc_example"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/npc_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/npc/examples/CMakeFiles/npc_example.dir/build: src/npc/examples/npc_example

.PHONY : src/npc/examples/CMakeFiles/npc_example.dir/build

src/npc/examples/CMakeFiles/npc_example.dir/clean:
	cd /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples && $(CMAKE_COMMAND) -P CMakeFiles/npc_example.dir/cmake_clean.cmake
.PHONY : src/npc/examples/CMakeFiles/npc_example.dir/clean

src/npc/examples/CMakeFiles/npc_example.dir/depend:
	cd /home/elizabethli/cmsc220/chiventure/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elizabethli/cmsc220/chiventure /home/elizabethli/cmsc220/chiventure/src/npc/examples /home/elizabethli/cmsc220/chiventure/tests /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples /home/elizabethli/cmsc220/chiventure/tests/src/npc/examples/CMakeFiles/npc_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/npc/examples/CMakeFiles/npc_example.dir/depend

