
set (TARGET hello)

set (INC_DIRS 
    ${ARITHM_INCLUDE_DIR}
    .
    )

set (LIBS
    ${ARITHM_LIBRARY}
    )

set (SRCS
    Hello.cpp
    )

include_directories (${INC_DIRS})
add_executable (${TARGET} ${SRCS})
target_link_libraries (${TARGET} ${LIBS})

install (TARGETS ${TARGET} 
         DESTINATION bin)

