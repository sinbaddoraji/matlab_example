# Example CMake file for compile mex code
# Zihan Chen
# 2015-10-17
# Reference:
# https://cmake.org/cmake/help/v3.3/module/FindMatlab.html

cmake_minimum_required(VERSION 3.3)
project (mexadd)

# manually set Matlab root dir
# set(Matlab_ROOT_DIR /usr/local/MATLAB/2015b)
find_package(Matlab REQUIRED)

message(STATUS ${Matlab_ROOT_DIR})
include_directories(
  ${Matlab_INCLUDE_DIRS}
)

matlab_add_mex(NAME mexadd SRC mexadd.cpp)
target_link_libraries(mexadd ${Matlab_LIBRARIES})


