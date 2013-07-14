# example project shows how to call matlab in cpp

cmake_minimum_required (VERSION 2.6)

project (cpp_matlab)

# set cisst dependencies
set (REQUIRED_CISST_LIBRARIES
     cisstCommon
     cisstVector
     cisstOSAbstraction
     cisstMultiTask
     cisstParameterTypes
     )


# find cisst
find_package (cisst REQUIRED ${REQUIRED_CISST_LIBRARIES})

# matlab
set(MATLAB_INCLUDE_DIR "/usr/local/MATLAB/R2013a/extern/include")
set(MATLAB_LIBRARY_DIR "/usr/local/MATLAB/R2013a/bin/glnxa64")
set(MATLAB_LIBRARIES
  ${MATLAB_LIBRARY_DIR}/libeng.so
  ${MATLAB_LIBRARY_DIR}/libmx.so
  ${MATLAB_LIBRARY_DIR}/libmex.so
  )

include_directories (${MATLAB_INCLUDE_DIR})

if (cisst_FOUND)
  # Modify CMake configuration to use cisst
  include (${CISST_USE_FILE})

  add_executable(engdemo engdemo.cpp )
  target_link_libraries(engdemo ${MATLAB_LIBRARIES})

  add_executable(engSGolay engSGolay.cpp)
  target_link_libraries(engSGolay ${MATLAB_LIBRARIES})

endif (cisst_FOUND)
