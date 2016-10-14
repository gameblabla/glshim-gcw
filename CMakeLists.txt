cmake_minimum_required(VERSION 2.6)

project(glshim)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

link_directories(${CMAKE_LIBRARY_OUTPUT_DIRECTORY})

option(PANDORA "Set to ON if targeting an OpenPandora device" ${PANDORA})
option(BCMHOST "Set to ON if targeting an RPi(2) device" ${BCMHOST})
option(ODROID "Set to ON if targeting an ODroid device" ${ODROID})

option(USE_DRAWTEX "Set to ON to use the glDrawTexiOES extension" ${USE_DRAWTEX})

if(USE_DRAWTEX)
    add_definitions(-DUSE_DRAWTEX)
endif()

link_directories(${CMAKE_BINARY_DIR}/lib)
add_definitions(-march=mips32r2 -Ofast -fsingle-precision-constant -ftree-vectorize -mmxu -std=c99)

include_directories(include)
add_subdirectory(src)
