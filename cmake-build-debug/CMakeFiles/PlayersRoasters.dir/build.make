# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PlayersRoasters.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PlayersRoasters.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PlayersRoasters.dir/flags.make

CMakeFiles/PlayersRoasters.dir/main.cpp.o: CMakeFiles/PlayersRoasters.dir/flags.make
CMakeFiles/PlayersRoasters.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PlayersRoasters.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PlayersRoasters.dir/main.cpp.o -c /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/main.cpp

CMakeFiles/PlayersRoasters.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PlayersRoasters.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/main.cpp > CMakeFiles/PlayersRoasters.dir/main.cpp.i

CMakeFiles/PlayersRoasters.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PlayersRoasters.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/main.cpp -o CMakeFiles/PlayersRoasters.dir/main.cpp.s

# Object files for target PlayersRoasters
PlayersRoasters_OBJECTS = \
"CMakeFiles/PlayersRoasters.dir/main.cpp.o"

# External object files for target PlayersRoasters
PlayersRoasters_EXTERNAL_OBJECTS =

PlayersRoasters: CMakeFiles/PlayersRoasters.dir/main.cpp.o
PlayersRoasters: CMakeFiles/PlayersRoasters.dir/build.make
PlayersRoasters: CMakeFiles/PlayersRoasters.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PlayersRoasters"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PlayersRoasters.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PlayersRoasters.dir/build: PlayersRoasters

.PHONY : CMakeFiles/PlayersRoasters.dir/build

CMakeFiles/PlayersRoasters.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PlayersRoasters.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PlayersRoasters.dir/clean

CMakeFiles/PlayersRoasters.dir/depend:
	cd /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug /Users/sarahnicholls/CLionProjects/playersroaster-nicholls-raiford/cmake-build-debug/CMakeFiles/PlayersRoasters.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PlayersRoasters.dir/depend

