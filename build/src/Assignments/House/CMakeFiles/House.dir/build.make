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
include src/Assignments/House/CMakeFiles/House.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Assignments/House/CMakeFiles/House.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Assignments/House/CMakeFiles/House.dir/progress.make

# Include the compile flags for this target's objects.
include src/Assignments/House/CMakeFiles/House.dir/flags.make

src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj: src/Assignments/House/CMakeFiles/House.dir/flags.make
src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj: src/Assignments/House/CMakeFiles/House.dir/includes_CXX.rsp
src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj: C:/Users/Barti/Documents/GitHub/3d23/src/Assignments/House/main.cpp
src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj: src/Assignments/House/CMakeFiles/House.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Barti\Documents\GitHub\3d23\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj -MF CMakeFiles\House.dir\main.cpp.obj.d -o CMakeFiles\House.dir\main.cpp.obj -c C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House\main.cpp

src/Assignments/House/CMakeFiles/House.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/House.dir/main.cpp.i"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House\main.cpp > CMakeFiles\House.dir\main.cpp.i

src/Assignments/House/CMakeFiles/House.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/House.dir/main.cpp.s"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House\main.cpp -o CMakeFiles\House.dir\main.cpp.s

src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj: src/Assignments/House/CMakeFiles/House.dir/flags.make
src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj: src/Assignments/House/CMakeFiles/House.dir/includes_CXX.rsp
src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj: C:/Users/Barti/Documents/GitHub/3d23/src/Assignments/House/app.cpp
src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj: src/Assignments/House/CMakeFiles/House.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Barti\Documents\GitHub\3d23\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj -MF CMakeFiles\House.dir\app.cpp.obj.d -o CMakeFiles\House.dir\app.cpp.obj -c C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House\app.cpp

src/Assignments/House/CMakeFiles/House.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/House.dir/app.cpp.i"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House\app.cpp > CMakeFiles\House.dir\app.cpp.i

src/Assignments/House/CMakeFiles/House.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/House.dir/app.cpp.s"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House\app.cpp -o CMakeFiles\House.dir\app.cpp.s

# Object files for target House
House_OBJECTS = \
"CMakeFiles/House.dir/main.cpp.obj" \
"CMakeFiles/House.dir/app.cpp.obj"

# External object files for target House
House_EXTERNAL_OBJECTS = \
"C:/Users/Barti/Documents/GitHub/3d23/build/CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj"

src/Assignments/House/House.exe: src/Assignments/House/CMakeFiles/House.dir/main.cpp.obj
src/Assignments/House/House.exe: src/Assignments/House/CMakeFiles/House.dir/app.cpp.obj
src/Assignments/House/House.exe: CMakeFiles/glad.dir/src/3rdParty/glad/glad_4_6/glad/src/gl.c.obj
src/Assignments/House/House.exe: src/Assignments/House/CMakeFiles/House.dir/build.make
src/Assignments/House/House.exe: _deps/glfw-build/src/libglfw3.a
src/Assignments/House/House.exe: src/Application/libapplication.a
src/Assignments/House/House.exe: _deps/glfw-build/src/libglfw3.a
src/Assignments/House/House.exe: src/Assignments/House/CMakeFiles/House.dir/linkLibs.rsp
src/Assignments/House/House.exe: src/Assignments/House/CMakeFiles/House.dir/objects1.rsp
src/Assignments/House/House.exe: src/Assignments/House/CMakeFiles/House.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Barti\Documents\GitHub\3d23\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable House.exe"
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\House.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Assignments/House/CMakeFiles/House.dir/build: src/Assignments/House/House.exe
.PHONY : src/Assignments/House/CMakeFiles/House.dir/build

src/Assignments/House/CMakeFiles/House.dir/clean:
	cd /d C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House && $(CMAKE_COMMAND) -P CMakeFiles\House.dir\cmake_clean.cmake
.PHONY : src/Assignments/House/CMakeFiles/House.dir/clean

src/Assignments/House/CMakeFiles/House.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Barti\Documents\GitHub\3d23 C:\Users\Barti\Documents\GitHub\3d23\src\Assignments\House C:\Users\Barti\Documents\GitHub\3d23\build C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House C:\Users\Barti\Documents\GitHub\3d23\build\src\Assignments\House\CMakeFiles\House.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/Assignments/House/CMakeFiles/House.dir/depend

