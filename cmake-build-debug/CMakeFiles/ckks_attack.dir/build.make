# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ckks_attack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ckks_attack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ckks_attack.dir/flags.make

CMakeFiles/ckks_attack.dir/src/eval.cpp.o: CMakeFiles/ckks_attack.dir/flags.make
CMakeFiles/ckks_attack.dir/src/eval.cpp.o: ../src/eval.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ckks_attack.dir/src/eval.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ckks_attack.dir/src/eval.cpp.o -c /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/eval.cpp

CMakeFiles/ckks_attack.dir/src/eval.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ckks_attack.dir/src/eval.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/eval.cpp > CMakeFiles/ckks_attack.dir/src/eval.cpp.i

CMakeFiles/ckks_attack.dir/src/eval.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ckks_attack.dir/src/eval.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/eval.cpp -o CMakeFiles/ckks_attack.dir/src/eval.cpp.s

CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.o: CMakeFiles/ckks_attack.dir/flags.make
CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.o: ../src/seal_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.o -c /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/seal_utils.cpp

CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/seal_utils.cpp > CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.i

CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/seal_utils.cpp -o CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.s

CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.o: CMakeFiles/ckks_attack.dir/flags.make
CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.o: ../src/seal_attack.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.o -c /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/seal_attack.cpp

CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/seal_attack.cpp > CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.i

CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/src/seal_attack.cpp -o CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.s

# Object files for target ckks_attack
ckks_attack_OBJECTS = \
"CMakeFiles/ckks_attack.dir/src/eval.cpp.o" \
"CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.o" \
"CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.o"

# External object files for target ckks_attack
ckks_attack_EXTERNAL_OBJECTS =

libckks_attack.a: CMakeFiles/ckks_attack.dir/src/eval.cpp.o
libckks_attack.a: CMakeFiles/ckks_attack.dir/src/seal_utils.cpp.o
libckks_attack.a: CMakeFiles/ckks_attack.dir/src/seal_attack.cpp.o
libckks_attack.a: CMakeFiles/ckks_attack.dir/build.make
libckks_attack.a: CMakeFiles/ckks_attack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libckks_attack.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ckks_attack.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ckks_attack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ckks_attack.dir/build: libckks_attack.a

.PHONY : CMakeFiles/ckks_attack.dir/build

CMakeFiles/ckks_attack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ckks_attack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ckks_attack.dir/clean

CMakeFiles/ckks_attack.dir/depend:
	cd /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug /Users/mwinger/Desktop/MasterThesis/seal_ckks_attack/cmake-build-debug/CMakeFiles/ckks_attack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ckks_attack.dir/depend

