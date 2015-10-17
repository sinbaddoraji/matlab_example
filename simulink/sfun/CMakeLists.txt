# CMake compile mex s-function 
# Zihan Chen
# 2015-10-17

cmake_minimum_required(VERSION 2.8)
project (sfun)

find_package(Matlab REQUIRED)
message(STATUS ${Matlab_ROOT_DIR})

set(Matlab_SL_INCLUDE_DIRS ${Matlab_ROOT_DIR}/simulink/include)
include_directories(
  ${Matlab_INCLUDE_DIRS}
  ${Matlab_SL_INCLUDE_DIRS}
)

add_definitions(-DMATLAB_MEX_FILE)

matlab_add_mex(NAME sfun_timestwo SRC sfun_timestwo.c)
target_link_libraries(sfun_timestwo ${Matlab_LIBRARIES})


