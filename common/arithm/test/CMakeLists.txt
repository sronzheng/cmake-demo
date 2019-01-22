
set (TARGET testArithm) 

set (INC_DIRS 
    ${GTEST_INCLUDE_DIR}
    ../include
    ../src
    )

set (TEST_SRCS
     Main.cpp
     ../src/Arithm.cpp
     ArithmTest.cpp
     )

set (LIBS
    ${GTEST_LIBRARY}
    )

add_definitions (-DUNIT_TEST)

include_directories (${INC_DIRS})
add_executable (${TARGET} ${TEST_SRCS})
target_link_libraries (${TARGET} ${LIBS})

