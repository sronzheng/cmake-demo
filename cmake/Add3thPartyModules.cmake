
include (ExternalProject)

#
# google test
#

ExternalProject_Add (gtest
    PREFIX 3th-party/gtest
    URL ${CMAKE_SOURCE_DIR}/3th-party/gtest/src/gtest-release-1.8.0.tar.gz
    CMAKE_COMMAND cmake
    CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/3th-party/gtest
    BUILD_COMMAND make
    INSTALL_COMMAND make install
    BUILD_IN_SOURCE 1)

#
# protobuf
#

set (PB_CMD_ARGS --with-protoc=/usr/bin/protoc
                        --disable-static
                        --enable-shared)

if (TARGET_ARCH STREQUAL "ABC")
    set (PB_CMD_ARGS_CROSS --host=arm-linux-gnueabi)
endif()

ExternalProject_Add (protobuf
    PREFIX 3th-party/protobuf
    URL ${CMAKE_SOURCE_DIR}/3th-party/protobuf/src/protobuf-2.4.1.tar.gz
    CONFIGURE_COMMAND ./configure ${PB_CONFIG_CMD_ARGS_CROSS} ${PB_CONFIG_CMD_ARGS} --prefix=${CMAKE_BINARY_DIR}/3th-party/protobuf
    BUILD_COMMAND make
    INSTALL_COMMAND make install
    BUILD_IN_SOURCE 1)

#
# jsoncpp
#

ExternalProject_Add (jsoncpp
    PREFIX 3th-party/jsoncpp
    URL ${CMAKE_SOURCE_DIR}/3th-party/jsoncpp/src/jsoncpp-0.10.7.tar.gz
    CMAKE_COMMAND cmake
    CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/3th-party/jsoncpp -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=OFF -DJSONCPP_WITH_TESTS=OFF -DJSONCPP_WITH_POST_BUILD_UNITTEST=OFF -DJSONCPP_WITH_PKGCONFIG_SUPPORT=OFF -DJSONCPP_WITH_CMAKE_PACKAGE=OFF
    BUILD_COMMAND make
    INSTALL_COMMAND make install
    BUILD_IN_SOURCE 1)

