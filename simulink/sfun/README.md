Simulink C s-function Example 
===================================

**List of Files**
* sfun_timestwo.c: c s-function example
* sl_sfun.slx: Simulink model for testing
* CMakeLists.txt: CMake file for compiling mex sfun with CMake 

**Usage**

``` bash
# ------- Compile -------
# Option 1: mex
mex sfun_timestwo.c

# Option 2: cmake
mkdir build && cd build && cmake .. && make 

# -------- Run -----------
# add build to Matlab path
# run sl_sfun from Matlab 
```
