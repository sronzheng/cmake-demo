
set (TARGET demoapp)

set (INC_DIRS 
    ${MYMATH_INCLUDE_DIR}
    .
    )

set (LIBS
    ${MYMATH_LIBRARY}
    )

set (SRCS
    DemoApp.cpp
    )

include_directories (${INC_DIRS})
add_executable (${TARGET} ${SRCS})
target_link_libraries (${TARGET} ${LIBS})

install (TARGETS ${TARGET} 
         DESTINATION bin)

