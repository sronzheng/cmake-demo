
########################
#
# 3th-party modules
#
########################

set (EXTERN_MODULE_ROOT_DIR  ${CMAKE_BINARY_DIR})
set (3TH_PARTY_DIR           ${EXTERN_MODULE_ROOT_DIR}/3th-party)

#

set (GTEST_DIR               ${3TH_PARTY_DIR}/gtest)
set (GTEST_INCLUDE_DIR       ${GTEST_DIR}/include)
set (GTEST_LIBRARY           ${GTEST_DIR}/lib/libgtest.a)

set (PROTOBUF_DIR            ${3TH_PARTY_DIR}/protobuf)
set (PROTOBUF_INCLUDE_DIR    ${PROTOBUF_DIR}/include)
set (PROTOBUF_LIBRARY        ${PROTOBUF_DIR}/lib/libprotobuf.so)

########################
#
# modules
#
########################

set (MODULE_ROOT_DIR         ${CMAKE_SOURCE_DIR})
set (COMMON_DIR              ${MODULE_ROOT_DIR}/common)
set (PLATFORM_DIR            ${MODULE_ROOT_DIR}/platform)

# common libraries

set (BASE_LIBRARY            base)
set (BASE_DIR                ${COMMON_DIR}/base)
set (BASE_INCLUDE_DIR        ${BASE_DIR}/include)

# platform libraries

