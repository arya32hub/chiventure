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
include tests/openworld/CMakeFiles/test-openworld.dir/depend.make

# Include the progress variables for this target.
include tests/openworld/CMakeFiles/test-openworld.dir/progress.make

# Include the compile flags for this target's objects.
include tests/openworld/CMakeFiles/test-openworld.dir/flags.make

tests/openworld/CMakeFiles/test-openworld.dir/test_autogenerate.c.o: tests/openworld/CMakeFiles/test-openworld.dir/flags.make
tests/openworld/CMakeFiles/test-openworld.dir/test_autogenerate.c.o: openworld/test_autogenerate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/openworld/CMakeFiles/test-openworld.dir/test_autogenerate.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-openworld.dir/test_autogenerate.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/openworld/test_autogenerate.c

tests/openworld/CMakeFiles/test-openworld.dir/test_autogenerate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-openworld.dir/test_autogenerate.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/openworld/test_autogenerate.c > CMakeFiles/test-openworld.dir/test_autogenerate.c.i

tests/openworld/CMakeFiles/test-openworld.dir/test_autogenerate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-openworld.dir/test_autogenerate.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/openworld/test_autogenerate.c -o CMakeFiles/test-openworld.dir/test_autogenerate.c.s

tests/openworld/CMakeFiles/test-openworld.dir/test_items.c.o: tests/openworld/CMakeFiles/test-openworld.dir/flags.make
tests/openworld/CMakeFiles/test-openworld.dir/test_items.c.o: openworld/test_items.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/openworld/CMakeFiles/test-openworld.dir/test_items.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-openworld.dir/test_items.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/openworld/test_items.c

tests/openworld/CMakeFiles/test-openworld.dir/test_items.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-openworld.dir/test_items.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/openworld/test_items.c > CMakeFiles/test-openworld.dir/test_items.c.i

tests/openworld/CMakeFiles/test-openworld.dir/test_items.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-openworld.dir/test_items.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/openworld/test_items.c -o CMakeFiles/test-openworld.dir/test_items.c.s

tests/openworld/CMakeFiles/test-openworld.dir/test_rooms.c.o: tests/openworld/CMakeFiles/test-openworld.dir/flags.make
tests/openworld/CMakeFiles/test-openworld.dir/test_rooms.c.o: openworld/test_rooms.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/openworld/CMakeFiles/test-openworld.dir/test_rooms.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-openworld.dir/test_rooms.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/openworld/test_rooms.c

tests/openworld/CMakeFiles/test-openworld.dir/test_rooms.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-openworld.dir/test_rooms.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/openworld/test_rooms.c > CMakeFiles/test-openworld.dir/test_rooms.c.i

tests/openworld/CMakeFiles/test-openworld.dir/test_rooms.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-openworld.dir/test_rooms.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/openworld/test_rooms.c -o CMakeFiles/test-openworld.dir/test_rooms.c.s

tests/openworld/CMakeFiles/test-openworld.dir/test_structs.c.o: tests/openworld/CMakeFiles/test-openworld.dir/flags.make
tests/openworld/CMakeFiles/test-openworld.dir/test_structs.c.o: openworld/test_structs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/openworld/CMakeFiles/test-openworld.dir/test_structs.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-openworld.dir/test_structs.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/openworld/test_structs.c

tests/openworld/CMakeFiles/test-openworld.dir/test_structs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-openworld.dir/test_structs.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/openworld/test_structs.c > CMakeFiles/test-openworld.dir/test_structs.c.i

tests/openworld/CMakeFiles/test-openworld.dir/test_structs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-openworld.dir/test_structs.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/openworld/test_structs.c -o CMakeFiles/test-openworld.dir/test_structs.c.s

tests/openworld/CMakeFiles/test-openworld.dir/main.c.o: tests/openworld/CMakeFiles/test-openworld.dir/flags.make
tests/openworld/CMakeFiles/test-openworld.dir/main.c.o: openworld/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/openworld/CMakeFiles/test-openworld.dir/main.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-openworld.dir/main.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/openworld/main.c

tests/openworld/CMakeFiles/test-openworld.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-openworld.dir/main.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/openworld/main.c > CMakeFiles/test-openworld.dir/main.c.i

tests/openworld/CMakeFiles/test-openworld.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-openworld.dir/main.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/openworld/main.c -o CMakeFiles/test-openworld.dir/main.c.s

# Object files for target test-openworld
test__openworld_OBJECTS = \
"CMakeFiles/test-openworld.dir/test_autogenerate.c.o" \
"CMakeFiles/test-openworld.dir/test_items.c.o" \
"CMakeFiles/test-openworld.dir/test_rooms.c.o" \
"CMakeFiles/test-openworld.dir/test_structs.c.o" \
"CMakeFiles/test-openworld.dir/main.c.o"

# External object files for target test-openworld
test__openworld_EXTERNAL_OBJECTS =

tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/test_autogenerate.c.o
tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/test_items.c.o
tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/test_rooms.c.o
tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/test_structs.c.o
tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/main.c.o
tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/build.make
tests/openworld/test-openworld: /usr/lib/libcriterion.so
tests/openworld/test-openworld: src/action_management/libaction_management.a
tests/openworld/test-openworld: src/battle/libbattle.a
tests/openworld/test-openworld: src/cli/libcli.a
tests/openworld/test-openworld: src/common/libcommon.a
tests/openworld/test-openworld: src/custom-actions/libcustom-actions.a
tests/openworld/test-openworld: src/game-state/libgame-state.a
tests/openworld/test-openworld: src/libobj/liblibobj.a
tests/openworld/test-openworld: src/quests/libquests.a
tests/openworld/test-openworld: src/sound/libsound.a
tests/openworld/test-openworld: src/npc/libnpc.a
tests/openworld/test-openworld: src/openworld/libopenworld.a
tests/openworld/test-openworld: src/playerclass/libplayerclass.a
tests/openworld/test-openworld: src/skilltrees/libskilltrees.a
tests/openworld/test-openworld: src/ui/libui.a
tests/openworld/test-openworld: src/wdl/libwdl.a
tests/openworld/test-openworld: src/custom-scripts/libcustom-scripts.a
tests/openworld/test-openworld: src/cli/libcli.a
tests/openworld/test-openworld: src/common/libcommon.a
tests/openworld/test-openworld: src/game-state/libgame-state.a
tests/openworld/test-openworld: src/cli/libcli.a
tests/openworld/test-openworld: src/common/libcommon.a
tests/openworld/test-openworld: src/game-state/libgame-state.a
tests/openworld/test-openworld: src/action_management/libaction_management.a
tests/openworld/test-openworld: src/ui/libui.a
tests/openworld/test-openworld: /usr/lib/x86_64-linux-gnu/libncursesw.so
tests/openworld/test-openworld: /usr/lib/x86_64-linux-gnu/libformw.so
tests/openworld/test-openworld: src/quests/libquests.a
tests/openworld/test-openworld: src/wdl/libwdl.a
tests/openworld/test-openworld: src/libobj/liblibobj.a
tests/openworld/test-openworld: src/npc/libnpc.a
tests/openworld/test-openworld: src/battle/libbattle.a
tests/openworld/test-openworld: src/playerclass/libplayerclass.a
tests/openworld/test-openworld: src/skilltrees/libskilltrees.a
tests/openworld/test-openworld: /usr/lib/x86_64-linux-gnu/libzip.so
tests/openworld/test-openworld: /usr/lib/x86_64-linux-gnu/libjson-c.so
tests/openworld/test-openworld: /usr/lib/x86_64-linux-gnu/liblua5.3.so
tests/openworld/test-openworld: /usr/lib/x86_64-linux-gnu/libm.so
tests/openworld/test-openworld: tests/openworld/CMakeFiles/test-openworld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable test-openworld"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-openworld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/openworld/CMakeFiles/test-openworld.dir/build: tests/openworld/test-openworld

.PHONY : tests/openworld/CMakeFiles/test-openworld.dir/build

tests/openworld/CMakeFiles/test-openworld.dir/clean:
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/openworld && $(CMAKE_COMMAND) -P CMakeFiles/test-openworld.dir/cmake_clean.cmake
.PHONY : tests/openworld/CMakeFiles/test-openworld.dir/clean

tests/openworld/CMakeFiles/test-openworld.dir/depend:
	cd /home/elizabethli/cmsc220/chiventure/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elizabethli/cmsc220/chiventure /home/elizabethli/cmsc220/chiventure/tests/openworld /home/elizabethli/cmsc220/chiventure/tests /home/elizabethli/cmsc220/chiventure/tests/tests/openworld /home/elizabethli/cmsc220/chiventure/tests/tests/openworld/CMakeFiles/test-openworld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/openworld/CMakeFiles/test-openworld.dir/depend

