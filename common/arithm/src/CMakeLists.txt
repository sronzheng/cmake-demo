
set (TARGET arithm)

set (INC_DIRS 
    ../include
    .
    )

set (LIBS
    )

set (SRCS
    Arithm.cpp
    )

include_directories (${INC_DIRS})
add_library (${TARGET} SHARED ${SRCS})
target_link_libraries (${TARGET} ${LIBS})

install (TARGETS ${TARGET} 
         DESTINATION lib)

