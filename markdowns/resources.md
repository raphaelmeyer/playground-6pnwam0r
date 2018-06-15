# You did it!

# Some Final Words

**Does**:
- Use the commands
  - target_include_directories
  - target_link_libraries
  - target_compile_definitions
  - target_compile_features
  - target_compile_options
- Always set `cmake_minimum_required`
- Use `PRIVATE`, `INTERFACE` and `PUBLIC`
- Use namespaced alias targets

**Don'ts**:
- Do NOT use
  - ~~add_compile_options~~
  - ~~add_definitions~~
  - ~~include_directories~~
  - ~~link_directories~~
  - ~~link_libraries~~
- Never ever use ~~set(CMAKE_...)~~

## Resources

[Effective  CMake](https://www.youtube.com/watch?v=bsXLMQ6WgIkCppCon2017) by Daniel  Pfeifer at C++Now 2017

[Using  Modern  CMakePatterns  to  Enforce  a  Good  Modular  Design](https://www.youtube.com/watch?v=eC9-iRN2b04) by Mathieu Ropert

[Embracing  Modern CMake](https://steveire.wordpress.com/2017/11/05/embracing-modern-cmake/) by Stephen  Kelly
