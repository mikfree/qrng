# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/pi/projects/qrng/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/projects/qrng/tests/build

# Include any dependencies generated for this target.
include CMakeFiles/tst-freq.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tst-freq.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tst-freq.dir/flags.make

CMakeFiles/tst-freq.dir/tst-freq.c.o: CMakeFiles/tst-freq.dir/flags.make
CMakeFiles/tst-freq.dir/tst-freq.c.o: ../tst-freq.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/qrng/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tst-freq.dir/tst-freq.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tst-freq.dir/tst-freq.c.o   -c /home/pi/projects/qrng/tests/tst-freq.c

CMakeFiles/tst-freq.dir/tst-freq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tst-freq.dir/tst-freq.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/qrng/tests/tst-freq.c > CMakeFiles/tst-freq.dir/tst-freq.c.i

CMakeFiles/tst-freq.dir/tst-freq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tst-freq.dir/tst-freq.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/qrng/tests/tst-freq.c -o CMakeFiles/tst-freq.dir/tst-freq.c.s

CMakeFiles/tst-freq.dir/tst-freq.c.o.requires:

.PHONY : CMakeFiles/tst-freq.dir/tst-freq.c.o.requires

CMakeFiles/tst-freq.dir/tst-freq.c.o.provides: CMakeFiles/tst-freq.dir/tst-freq.c.o.requires
	$(MAKE) -f CMakeFiles/tst-freq.dir/build.make CMakeFiles/tst-freq.dir/tst-freq.c.o.provides.build
.PHONY : CMakeFiles/tst-freq.dir/tst-freq.c.o.provides

CMakeFiles/tst-freq.dir/tst-freq.c.o.provides.build: CMakeFiles/tst-freq.dir/tst-freq.c.o


# Object files for target tst-freq
tst__freq_OBJECTS = \
"CMakeFiles/tst-freq.dir/tst-freq.c.o"

# External object files for target tst-freq
tst__freq_EXTERNAL_OBJECTS =

tst-freq: CMakeFiles/tst-freq.dir/tst-freq.c.o
tst-freq: CMakeFiles/tst-freq.dir/build.make
tst-freq: CMakeFiles/tst-freq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/projects/qrng/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tst-freq"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tst-freq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tst-freq.dir/build: tst-freq

.PHONY : CMakeFiles/tst-freq.dir/build

CMakeFiles/tst-freq.dir/requires: CMakeFiles/tst-freq.dir/tst-freq.c.o.requires

.PHONY : CMakeFiles/tst-freq.dir/requires

CMakeFiles/tst-freq.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tst-freq.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tst-freq.dir/clean

CMakeFiles/tst-freq.dir/depend:
	cd /home/pi/projects/qrng/tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/projects/qrng/tests /home/pi/projects/qrng/tests /home/pi/projects/qrng/tests/build /home/pi/projects/qrng/tests/build /home/pi/projects/qrng/tests/build/CMakeFiles/tst-freq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tst-freq.dir/depend

