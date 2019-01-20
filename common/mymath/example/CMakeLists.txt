
set (TARGET myMathExm)

set (INC_DIRS 
    ../include
    )

set (LIBS)

include_directories (${INC_DIRS})
add_executable (${TARGET} MQueueEg.cpp)
target_link_libraries (${TARGET} ${LIBS})

