# CMake Project File

The entry point for a CMake project is a file called `CMakeLists.txt`.

## Exercise 1

Let's set up the top level `CMakeLists.txt` in the project root folder.
```
[project]/
+--- CMakeLists.txt
+--- ...
```

The top level `CMakeLists.txt` must start with command [`cmake_minimum_required`](https://cmake.org/cmake/help/v3.10/command/cmake_minimum_required.html). For this exercise we will be using CMake version `3.10`.

Next is the [`project`](https://cmake.org/cmake/help/v3.10/command/project.html) command.
Our time machine project should be named **TimeMachine**, should have version **1.0.2** and its language should be set to **C++**.

@[Run CMake]({"stubs": ["01_project_root/stubs/CMakeLists.txt"], "command": "01_project_root/check.sh"})

## Building a CMake project

In order to build a CMake project we need a working directory for the build.
In our example we use a folder `build` in the project folder.

For project initialization you must change into the build folder.
But you only need to initialize a build folder once.

```
# create the build folder
mkdir -p /project/build

# for initialization we must change into the build folder
cd /project/build
cmake -G Ninja /project

# build the project
cmake --build /project/build
```

The option `-G` of the [`cmake`](https://cmake.org/cmake/help/v3.10/manual/cmake.1.html) command line tool sets the [generator](https://cmake.org/cmake/help/v3.10/manual/cmake-generators.7.html).
There are generators for different build systems like make or ninja.
Also, there are generators to create projects for IDEs like eclipse or visual studio.
