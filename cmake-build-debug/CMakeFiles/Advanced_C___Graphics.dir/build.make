# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/zander/CLionProjects/Advanced C++ Graphics"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Advanced_C___Graphics.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Advanced_C___Graphics.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Advanced_C___Graphics.dir/flags.make

CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/main.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/main.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/main.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o: ../src/MainGame.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/MainGame.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/MainGame.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/MainGame.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o: ../src/Sprite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/Sprite.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/Sprite.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/Sprite.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o: ../src/GLSLProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/GLSLProgram.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/GLSLProgram.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/GLSLProgram.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o: ../src/Errors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/Errors.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/Errors.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/Errors.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o: ../src/IOManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/IOManager.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/IOManager.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/IOManager.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o: ../src/picoPNG.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/picoPNG.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/picoPNG.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/picoPNG.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o


CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o: CMakeFiles/Advanced_C___Graphics.dir/flags.make
CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o: ../src/ImageLoader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o -c "/home/zander/CLionProjects/Advanced C++ Graphics/src/ImageLoader.cpp"

CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zander/CLionProjects/Advanced C++ Graphics/src/ImageLoader.cpp" > CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.i

CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zander/CLionProjects/Advanced C++ Graphics/src/ImageLoader.cpp" -o CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.s

CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.requires:

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.requires

CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.provides: CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.requires
	$(MAKE) -f CMakeFiles/Advanced_C___Graphics.dir/build.make CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.provides.build
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.provides

CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.provides.build: CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o


# Object files for target Advanced_C___Graphics
Advanced_C___Graphics_OBJECTS = \
"CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o" \
"CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o"

# External object files for target Advanced_C___Graphics
Advanced_C___Graphics_EXTERNAL_OBJECTS =

Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/build.make
Advanced_C___Graphics: /usr/lib/libGLEW.so
Advanced_C___Graphics: /usr/lib/libGL.so
Advanced_C___Graphics: CMakeFiles/Advanced_C___Graphics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Advanced_C___Graphics"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Advanced_C___Graphics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Advanced_C___Graphics.dir/build: Advanced_C___Graphics

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/build

CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/main.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/MainGame.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/Sprite.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/GLSLProgram.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/Errors.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/IOManager.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/picoPNG.cpp.o.requires
CMakeFiles/Advanced_C___Graphics.dir/requires: CMakeFiles/Advanced_C___Graphics.dir/src/ImageLoader.cpp.o.requires

.PHONY : CMakeFiles/Advanced_C___Graphics.dir/requires

CMakeFiles/Advanced_C___Graphics.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Advanced_C___Graphics.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/clean

CMakeFiles/Advanced_C___Graphics.dir/depend:
	cd "/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/zander/CLionProjects/Advanced C++ Graphics" "/home/zander/CLionProjects/Advanced C++ Graphics" "/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug" "/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug" "/home/zander/CLionProjects/Advanced C++ Graphics/cmake-build-debug/CMakeFiles/Advanced_C___Graphics.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Advanced_C___Graphics.dir/depend

