# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Barti\Documents\GitHub\3d23

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Barti\Documents\GitHub\3d23\build

# Include any dependencies generated for this target.
include CMakeFiles/glad.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/glad.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/glad.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/glad.dir/flags.make

CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj: CMakeFiles/glad.dir/flags.make
CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj: CMakeFiles/glad.dir/includes_C.rsp
CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj: C:/Users/Barti/Documents/GitHub/3d23/src/3rdParty/glad/glad_4_6/glad/src/gl.c
CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj: CMakeFiles/glad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Barti\Documents\GitHub\3d23\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj"
	C:\msys64\ucrt64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj -MF CMakeFiles\glad.dir\src\3rdParty\glad\glad_4_6\glad\src\gl.c.obj.d -o CMakeFiles\glad.dir\src\3rdParty\glad\glad_4_6\glad\src\gl.c.obj -c C:\Users\Barti\Documents\GitHub\3d23\src\3rdParty\glad\glad_4_6\glad\src\gl.c

CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.i"
	C:\msys64\ucrt64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Barti\Documents\GitHub\3d23\src\3rdParty\glad\glad_4_6\glad\src\gl.c > CMakeFiles\glad.dir\src\3rdParty\glad\glad_4_6\glad\src\gl.c.i

CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.s"
	C:\msys64\ucrt64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Barti\Documents\GitHub\3d23\src\3rdParty\glad\glad_4_6\glad\src\gl.c -o CMakeFiles\glad.dir\src\3rdParty\glad\glad_4_6\glad\src\gl.c.s

glad: CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj
glad: CMakeFiles/glad.dir/build.make
.PHONY : glad

# Rule to build all files generated by this target.
CMakeFiles/glad.dir/build: glad
.PHONY : CMakeFiles/glad.dir/build

CMakeFiles/glad.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\glad.dir\cmake_clean.cmake
.PHONY : CMakeFiles/glad.dir/clean

CMakeFiles/glad.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Barti\Documents\GitHub\3d23 C:\Users\Barti\Documents\GitHub\3d23 C:\Users\Barti\Documents\GitHub\3d23\build C:\Users\Barti\Documents\GitHub\3d23\build C:\Users\Barti\Documents\GitHub\3d23\build\CMakeFiles\glad.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/glad.dir/depend

