
set (TARGET arithmExm)

set (INC_DIRS 
    ../include
    )

set (LIBS
    arithm)

include_directories (${INC_DIRS})
add_executable (${TARGET} ArithmExample.cpp)
target_link_libraries (${TARGET} ${LIBS})

