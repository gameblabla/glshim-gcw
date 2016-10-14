include_directories(util)

file(GLOB_RECURSE GL_SOURCES gl/*.c)

include_directories(glx)
aux_source_directory(glx GLX_SOURCES)
list(APPEND GL_SOURCES ${GLX_SOURCES})

add_library(GL SHARED ${GL_SOURCES})

target_link_libraries(GL m dl)

if(CMAKE_SHARED_LIBRARY_SUFFIX MATCHES ".so")
    set_target_properties(GL PROPERTIES SUFFIX ".so.1")
endif()

aux_source_directory(preload PRELOAD_SOURCES)
add_library(preload SHARED ${PRELOAD_SOURCES})

target_link_libraries(preload)

add_subdirectory(proxy)
