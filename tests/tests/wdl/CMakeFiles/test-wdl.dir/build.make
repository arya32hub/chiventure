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
include tests/wdl/CMakeFiles/test-wdl.dir/depend.make

# Include the progress variables for this target.
include tests/wdl/CMakeFiles/test-wdl.dir/progress.make

# Include the compile flags for this target's objects.
include tests/wdl/CMakeFiles/test-wdl.dir/flags.make

tests/wdl/CMakeFiles/test-wdl.dir/test_game.c.o: tests/wdl/CMakeFiles/test-wdl.dir/flags.make
tests/wdl/CMakeFiles/test-wdl.dir/test_game.c.o: wdl/test_game.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/wdl/CMakeFiles/test-wdl.dir/test_game.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-wdl.dir/test_game.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/wdl/test_game.c

tests/wdl/CMakeFiles/test-wdl.dir/test_game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-wdl.dir/test_game.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/wdl/test_game.c > CMakeFiles/test-wdl.dir/test_game.c.i

tests/wdl/CMakeFiles/test-wdl.dir/test_game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-wdl.dir/test_game.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/wdl/test_game.c -o CMakeFiles/test-wdl.dir/test_game.c.s

tests/wdl/CMakeFiles/test-wdl.dir/test_item.c.o: tests/wdl/CMakeFiles/test-wdl.dir/flags.make
tests/wdl/CMakeFiles/test-wdl.dir/test_item.c.o: wdl/test_item.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/wdl/CMakeFiles/test-wdl.dir/test_item.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-wdl.dir/test_item.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/wdl/test_item.c

tests/wdl/CMakeFiles/test-wdl.dir/test_item.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-wdl.dir/test_item.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/wdl/test_item.c > CMakeFiles/test-wdl.dir/test_item.c.i

tests/wdl/CMakeFiles/test-wdl.dir/test_item.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-wdl.dir/test_item.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/wdl/test_item.c -o CMakeFiles/test-wdl.dir/test_item.c.s

tests/wdl/CMakeFiles/test-wdl.dir/test_room.c.o: tests/wdl/CMakeFiles/test-wdl.dir/flags.make
tests/wdl/CMakeFiles/test-wdl.dir/test_room.c.o: wdl/test_room.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/wdl/CMakeFiles/test-wdl.dir/test_room.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-wdl.dir/test_room.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/wdl/test_room.c

tests/wdl/CMakeFiles/test-wdl.dir/test_room.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-wdl.dir/test_room.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/wdl/test_room.c > CMakeFiles/test-wdl.dir/test_room.c.i

tests/wdl/CMakeFiles/test-wdl.dir/test_room.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-wdl.dir/test_room.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/wdl/test_room.c -o CMakeFiles/test-wdl.dir/test_room.c.s

tests/wdl/CMakeFiles/test-wdl.dir/test_class.c.o: tests/wdl/CMakeFiles/test-wdl.dir/flags.make
tests/wdl/CMakeFiles/test-wdl.dir/test_class.c.o: wdl/test_class.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/wdl/CMakeFiles/test-wdl.dir/test_class.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-wdl.dir/test_class.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/wdl/test_class.c

tests/wdl/CMakeFiles/test-wdl.dir/test_class.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-wdl.dir/test_class.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/wdl/test_class.c > CMakeFiles/test-wdl.dir/test_class.c.i

tests/wdl/CMakeFiles/test-wdl.dir/test_class.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-wdl.dir/test_class.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/wdl/test_class.c -o CMakeFiles/test-wdl.dir/test_class.c.s

tests/wdl/CMakeFiles/test-wdl.dir/test_validation.c.o: tests/wdl/CMakeFiles/test-wdl.dir/flags.make
tests/wdl/CMakeFiles/test-wdl.dir/test_validation.c.o: wdl/test_validation.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/wdl/CMakeFiles/test-wdl.dir/test_validation.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-wdl.dir/test_validation.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/wdl/test_validation.c

tests/wdl/CMakeFiles/test-wdl.dir/test_validation.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-wdl.dir/test_validation.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/wdl/test_validation.c > CMakeFiles/test-wdl.dir/test_validation.c.i

tests/wdl/CMakeFiles/test-wdl.dir/test_validation.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-wdl.dir/test_validation.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/wdl/test_validation.c -o CMakeFiles/test-wdl.dir/test_validation.c.s

tests/wdl/CMakeFiles/test-wdl.dir/main.c.o: tests/wdl/CMakeFiles/test-wdl.dir/flags.make
tests/wdl/CMakeFiles/test-wdl.dir/main.c.o: wdl/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object tests/wdl/CMakeFiles/test-wdl.dir/main.c.o"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-wdl.dir/main.c.o   -c /home/elizabethli/cmsc220/chiventure/tests/wdl/main.c

tests/wdl/CMakeFiles/test-wdl.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-wdl.dir/main.c.i"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elizabethli/cmsc220/chiventure/tests/wdl/main.c > CMakeFiles/test-wdl.dir/main.c.i

tests/wdl/CMakeFiles/test-wdl.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-wdl.dir/main.c.s"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elizabethli/cmsc220/chiventure/tests/wdl/main.c -o CMakeFiles/test-wdl.dir/main.c.s

# Object files for target test-wdl
test__wdl_OBJECTS = \
"CMakeFiles/test-wdl.dir/test_game.c.o" \
"CMakeFiles/test-wdl.dir/test_item.c.o" \
"CMakeFiles/test-wdl.dir/test_room.c.o" \
"CMakeFiles/test-wdl.dir/test_class.c.o" \
"CMakeFiles/test-wdl.dir/test_validation.c.o" \
"CMakeFiles/test-wdl.dir/main.c.o"

# External object files for target test-wdl
test__wdl_EXTERNAL_OBJECTS =

tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/test_game.c.o
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/test_item.c.o
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/test_room.c.o
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/test_class.c.o
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/test_validation.c.o
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/main.c.o
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/build.make
tests/wdl/test-wdl: /usr/lib/libcriterion.so
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libjson-c.so
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libzip.so
tests/wdl/test-wdl: src/action_management/libaction_management.a
tests/wdl/test-wdl: src/battle/libbattle.a
tests/wdl/test-wdl: src/cli/libcli.a
tests/wdl/test-wdl: src/common/libcommon.a
tests/wdl/test-wdl: src/custom-actions/libcustom-actions.a
tests/wdl/test-wdl: src/game-state/libgame-state.a
tests/wdl/test-wdl: src/libobj/liblibobj.a
tests/wdl/test-wdl: src/quests/libquests.a
tests/wdl/test-wdl: src/sound/libsound.a
tests/wdl/test-wdl: src/npc/libnpc.a
tests/wdl/test-wdl: src/openworld/libopenworld.a
tests/wdl/test-wdl: src/playerclass/libplayerclass.a
tests/wdl/test-wdl: src/skilltrees/libskilltrees.a
tests/wdl/test-wdl: src/ui/libui.a
tests/wdl/test-wdl: src/wdl/libwdl.a
tests/wdl/test-wdl: src/custom-scripts/libcustom-scripts.a
tests/wdl/test-wdl: src/cli/libcli.a
tests/wdl/test-wdl: src/common/libcommon.a
tests/wdl/test-wdl: src/game-state/libgame-state.a
tests/wdl/test-wdl: src/cli/libcli.a
tests/wdl/test-wdl: src/common/libcommon.a
tests/wdl/test-wdl: src/game-state/libgame-state.a
tests/wdl/test-wdl: src/action_management/libaction_management.a
tests/wdl/test-wdl: src/ui/libui.a
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libncursesw.so
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libformw.so
tests/wdl/test-wdl: src/quests/libquests.a
tests/wdl/test-wdl: src/wdl/libwdl.a
tests/wdl/test-wdl: src/libobj/liblibobj.a
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libjson-c.so
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libzip.so
tests/wdl/test-wdl: src/npc/libnpc.a
tests/wdl/test-wdl: src/battle/libbattle.a
tests/wdl/test-wdl: src/playerclass/libplayerclass.a
tests/wdl/test-wdl: src/skilltrees/libskilltrees.a
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/liblua5.3.so
tests/wdl/test-wdl: /usr/lib/x86_64-linux-gnu/libm.so
tests/wdl/test-wdl: tests/wdl/CMakeFiles/test-wdl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elizabethli/cmsc220/chiventure/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable test-wdl"
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-wdl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/wdl/CMakeFiles/test-wdl.dir/build: tests/wdl/test-wdl

.PHONY : tests/wdl/CMakeFiles/test-wdl.dir/build

tests/wdl/CMakeFiles/test-wdl.dir/clean:
	cd /home/elizabethli/cmsc220/chiventure/tests/tests/wdl && $(CMAKE_COMMAND) -P CMakeFiles/test-wdl.dir/cmake_clean.cmake
.PHONY : tests/wdl/CMakeFiles/test-wdl.dir/clean

tests/wdl/CMakeFiles/test-wdl.dir/depend:
	cd /home/elizabethli/cmsc220/chiventure/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elizabethli/cmsc220/chiventure /home/elizabethli/cmsc220/chiventure/tests/wdl /home/elizabethli/cmsc220/chiventure/tests /home/elizabethli/cmsc220/chiventure/tests/tests/wdl /home/elizabethli/cmsc220/chiventure/tests/tests/wdl/CMakeFiles/test-wdl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/wdl/CMakeFiles/test-wdl.dir/depend

