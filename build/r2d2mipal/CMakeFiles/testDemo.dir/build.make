# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/upf/code/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/upf/code/catkin_ws/build

# Include any dependencies generated for this target.
include r2d2mipal/CMakeFiles/testDemo.dir/depend.make

# Include the progress variables for this target.
include r2d2mipal/CMakeFiles/testDemo.dir/progress.make

# Include the compile flags for this target's objects.
include r2d2mipal/CMakeFiles/testDemo.dir/flags.make

r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o: r2d2mipal/CMakeFiles/testDemo.dir/flags.make
r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o: /home/upf/code/catkin_ws/src/r2d2mipal/src/test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/upf/code/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o"
	cd /home/upf/code/catkin_ws/build/r2d2mipal && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testDemo.dir/src/test.cpp.o -c /home/upf/code/catkin_ws/src/r2d2mipal/src/test.cpp

r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testDemo.dir/src/test.cpp.i"
	cd /home/upf/code/catkin_ws/build/r2d2mipal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/upf/code/catkin_ws/src/r2d2mipal/src/test.cpp > CMakeFiles/testDemo.dir/src/test.cpp.i

r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testDemo.dir/src/test.cpp.s"
	cd /home/upf/code/catkin_ws/build/r2d2mipal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/upf/code/catkin_ws/src/r2d2mipal/src/test.cpp -o CMakeFiles/testDemo.dir/src/test.cpp.s

r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.requires:
.PHONY : r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.requires

r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.provides: r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.requires
	$(MAKE) -f r2d2mipal/CMakeFiles/testDemo.dir/build.make r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.provides.build
.PHONY : r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.provides

r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.provides.build: r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o

# Object files for target testDemo
testDemo_OBJECTS = \
"CMakeFiles/testDemo.dir/src/test.cpp.o"

# External object files for target testDemo
testDemo_EXTERNAL_OBJECTS =

/home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo: r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o
/home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo: r2d2mipal/CMakeFiles/testDemo.dir/build.make
/home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
/home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo: /home/upf/code/catkin_ws/devel/lib/libr2d2mipal.so
/home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
/home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo: r2d2mipal/CMakeFiles/testDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo"
	cd /home/upf/code/catkin_ws/build/r2d2mipal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testDemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
r2d2mipal/CMakeFiles/testDemo.dir/build: /home/upf/code/catkin_ws/devel/lib/r2d2mipal/testDemo
.PHONY : r2d2mipal/CMakeFiles/testDemo.dir/build

r2d2mipal/CMakeFiles/testDemo.dir/requires: r2d2mipal/CMakeFiles/testDemo.dir/src/test.cpp.o.requires
.PHONY : r2d2mipal/CMakeFiles/testDemo.dir/requires

r2d2mipal/CMakeFiles/testDemo.dir/clean:
	cd /home/upf/code/catkin_ws/build/r2d2mipal && $(CMAKE_COMMAND) -P CMakeFiles/testDemo.dir/cmake_clean.cmake
.PHONY : r2d2mipal/CMakeFiles/testDemo.dir/clean

r2d2mipal/CMakeFiles/testDemo.dir/depend:
	cd /home/upf/code/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/upf/code/catkin_ws/src /home/upf/code/catkin_ws/src/r2d2mipal /home/upf/code/catkin_ws/build /home/upf/code/catkin_ws/build/r2d2mipal /home/upf/code/catkin_ws/build/r2d2mipal/CMakeFiles/testDemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : r2d2mipal/CMakeFiles/testDemo.dir/depend

