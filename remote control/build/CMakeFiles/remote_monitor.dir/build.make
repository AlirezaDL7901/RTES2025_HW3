# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/e/Me/Chapter 12/Embedded/remote control"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/e/Me/Chapter 12/Embedded/remote control/build"

# Include any dependencies generated for this target.
include CMakeFiles/remote_monitor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/remote_monitor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/remote_monitor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/remote_monitor.dir/flags.make

CMakeFiles/remote_monitor.dir/src/main.cpp.o: CMakeFiles/remote_monitor.dir/flags.make
CMakeFiles/remote_monitor.dir/src/main.cpp.o: /mnt/e/Me/Chapter\ 12/Embedded/remote\ control/src/main.cpp
CMakeFiles/remote_monitor.dir/src/main.cpp.o: CMakeFiles/remote_monitor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/mnt/e/Me/Chapter 12/Embedded/remote control/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/remote_monitor.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/remote_monitor.dir/src/main.cpp.o -MF CMakeFiles/remote_monitor.dir/src/main.cpp.o.d -o CMakeFiles/remote_monitor.dir/src/main.cpp.o -c "/mnt/e/Me/Chapter 12/Embedded/remote control/src/main.cpp"

CMakeFiles/remote_monitor.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remote_monitor.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/e/Me/Chapter 12/Embedded/remote control/src/main.cpp" > CMakeFiles/remote_monitor.dir/src/main.cpp.i

CMakeFiles/remote_monitor.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remote_monitor.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/e/Me/Chapter 12/Embedded/remote control/src/main.cpp" -o CMakeFiles/remote_monitor.dir/src/main.cpp.s

CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o: CMakeFiles/remote_monitor.dir/flags.make
CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o: /mnt/e/Me/Chapter\ 12/Embedded/remote\ control/src/ssh_connection.cpp
CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o: CMakeFiles/remote_monitor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/mnt/e/Me/Chapter 12/Embedded/remote control/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o -MF CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o.d -o CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o -c "/mnt/e/Me/Chapter 12/Embedded/remote control/src/ssh_connection.cpp"

CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/e/Me/Chapter 12/Embedded/remote control/src/ssh_connection.cpp" > CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.i

CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/e/Me/Chapter 12/Embedded/remote control/src/ssh_connection.cpp" -o CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.s

CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o: CMakeFiles/remote_monitor.dir/flags.make
CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o: /mnt/e/Me/Chapter\ 12/Embedded/remote\ control/src/hardware_monitor.cpp
CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o: CMakeFiles/remote_monitor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/mnt/e/Me/Chapter 12/Embedded/remote control/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o -MF CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o.d -o CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o -c "/mnt/e/Me/Chapter 12/Embedded/remote control/src/hardware_monitor.cpp"

CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/e/Me/Chapter 12/Embedded/remote control/src/hardware_monitor.cpp" > CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.i

CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/e/Me/Chapter 12/Embedded/remote control/src/hardware_monitor.cpp" -o CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.s

# Object files for target remote_monitor
remote_monitor_OBJECTS = \
"CMakeFiles/remote_monitor.dir/src/main.cpp.o" \
"CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o" \
"CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o"

# External object files for target remote_monitor
remote_monitor_EXTERNAL_OBJECTS =

bin/remote_monitor: CMakeFiles/remote_monitor.dir/src/main.cpp.o
bin/remote_monitor: CMakeFiles/remote_monitor.dir/src/ssh_connection.cpp.o
bin/remote_monitor: CMakeFiles/remote_monitor.dir/src/hardware_monitor.cpp.o
bin/remote_monitor: CMakeFiles/remote_monitor.dir/build.make
bin/remote_monitor: /usr/lib/x86_64-linux-gnu/libssh.so.4.9.6
bin/remote_monitor: CMakeFiles/remote_monitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/mnt/e/Me/Chapter 12/Embedded/remote control/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable bin/remote_monitor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/remote_monitor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/remote_monitor.dir/build: bin/remote_monitor
.PHONY : CMakeFiles/remote_monitor.dir/build

CMakeFiles/remote_monitor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/remote_monitor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/remote_monitor.dir/clean

CMakeFiles/remote_monitor.dir/depend:
	cd "/mnt/e/Me/Chapter 12/Embedded/remote control/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/e/Me/Chapter 12/Embedded/remote control" "/mnt/e/Me/Chapter 12/Embedded/remote control" "/mnt/e/Me/Chapter 12/Embedded/remote control/build" "/mnt/e/Me/Chapter 12/Embedded/remote control/build" "/mnt/e/Me/Chapter 12/Embedded/remote control/build/CMakeFiles/remote_monitor.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/remote_monitor.dir/depend

