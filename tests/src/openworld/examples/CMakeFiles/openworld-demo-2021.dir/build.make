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
include src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/depend.make

# Include the progress variables for this target.
include src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/progress.make

# Include the compile flags for this target's objects.
include src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/flags.make

src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.o: src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/flags.make
src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.o: ../src/openworld/examples/openworld-demo-2021.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.o   -c /home/elizabethli/cmsc220/chiventure/src/openworld/examples/openworld-demo-2021.c

src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/src/openworld/examples/openworld-demo-2021.c > CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.i

src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/src/openworld/examples/openworld-demo-2021.c -o CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.s

# Object files for target openworld-demo-2021
openworld__demo__2021_OBJECTS = \
"CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.o"

# External object files for target openworld-demo-2021
openworld__demo__2021_EXTERNAL_OBJECTS =

src/openworld/examples/openworld-demo-2021: src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/openworld-demo-2021.c.o
src/openworld/examples/openworld-demo-2021: src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/build.make
src/openworld/examples/openworld-demo-2021: src/action_management/libaction_management.a
src/openworld/examples/openworld-demo-2021: src/battle/libbattle.a
src/openworld/examples/openworld-demo-2021: src/cli/libcli.a
src/openworld/examples/openworld-demo-2021: src/common/libcommon.a
src/openworld/examples/openworld-demo-2021: src/custom-actions/libcustom-actions.a
src/openworld/examples/openworld-demo-2021: src/game-state/libgame-state.a
src/openworld/examples/openworld-demo-2021: src/libobj/liblibobj.a
src/openworld/examples/openworld-demo-2021: src/quests/libquests.a
src/openworld/examples/openworld-demo-2021: src/sound/libsound.a
src/openworld/examples/openworld-demo-2021: src/npc/libnpc.a
src/openworld/examples/openworld-demo-2021: src/openworld/libopenworld.a
src/openworld/examples/openworld-demo-2021: src/playerclass/libplayerclass.a
src/openworld/examples/openworld-demo-2021: src/skilltrees/libskilltrees.a
src/openworld/examples/openworld-demo-2021: src/ui/libui.a
src/openworld/examples/openworld-demo-2021: src/wdl/libwdl.a
src/openworld/examples/openworld-demo-2021: src/custom-scripts/libcustom-scripts.a
src/openworld/examples/openworld-demo-2021: src/cli/libcli.a
src/openworld/examples/openworld-demo-2021: src/common/libcommon.a
src/openworld/examples/openworld-demo-2021: src/game-state/libgame-state.a
src/openworld/examples/openworld-demo-2021: src/cli/libcli.a
src/openworld/examples/openworld-demo-2021: src/common/libcommon.a
src/openworld/examples/openworld-demo-2021: src/game-state/libgame-state.a
src/openworld/examples/openworld-demo-2021: src/action_management/libaction_management.a
src/openworld/examples/openworld-demo-2021: src/ui/libui.a
src/openworld/examples/openworld-demo-2021: /usr/lib/x86_64-linux-gnu/libncursesw.so
src/openworld/examples/openworld-demo-2021: /usr/lib/x86_64-linux-gnu/libformw.so
src/openworld/examples/openworld-demo-2021: src/quests/libquests.a
src/openworld/examples/openworld-demo-2021: src/wdl/libwdl.a
src/openworld/examples/openworld-demo-2021: src/libobj/liblibobj.a
src/openworld/examples/openworld-demo-2021: src/npc/libnpc.a
src/openworld/examples/openworld-demo-2021: src/battle/libbattle.a
src/openworld/examples/openworld-demo-2021: src/playerclass/libplayerclass.a
src/openworld/examples/openworld-demo-2021: src/skilltrees/libskilltrees.a
src/openworld/examples/openworld-demo-2021: /usr/lib/x86_64-linux-gnu/libzip.so
src/openworld/examples/openworld-demo-2021: /usr/lib/x86_64-linux-gnu/libjson-c.so
src/openworld/examples/openworld-demo-2021: /usr/lib/x86_64-linux-gnu/liblua5.3.so
src/openworld/examples/openworld-demo-2021: /usr/lib/x86_64-linux-gnu/libm.so
src/openworld/examples/openworld-demo-2021: src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable openworld-demo-2021"
	cd /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openworld-demo-2021.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/build: src/openworld/examples/openworld-demo-2021

.PHONY : src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/build

src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/clean:
	cd /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples && $(CMAKE_COMMAND) -P CMakeFiles/openworld-demo-2021.dir/cmake_clean.cmake
.PHONY : src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/clean

src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/depend:
	cd /home/elizabethli/cmsc220/chiventure/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elizabethli/cmsc220/chiventure /home/elizabethli/cmsc220/chiventure/src/openworld/examples /home/elizabethli/cmsc220/chiventure/tests /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples /home/elizabethli/cmsc220/chiventure/tests/src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/openworld/examples/CMakeFiles/openworld-demo-2021.dir/depend

