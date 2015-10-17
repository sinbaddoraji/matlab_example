CMake MEX Example 
======================

Example code shows how to use CMake FindMatlab module to compile mex target.

**Usage**

``` bash 
# build code
mkdir build
cd build
ccmake ..
make

# call in Matlab
# make sure build is in Matlab path
sum = mexadd(1,2)
```
