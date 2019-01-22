
cmake_minimum_required (VERSION 3.0)

project (demo)

include (cmake/BuildType.cmake)

include (cmake/Add3thPartyModules.cmake)

include (cmake/MakeModulePaths.cmake)

add_subdirectory (3th-party)
add_subdirectory (common)
add_subdirectory (platform)
add_subdirectory (apps)
#add_subdirectory (scripts)

file (READ Version.hpp VERSION_STR)

string (REGEX REPLACE ".*#define +VERSION_MAJOR +([0-9]+).*" "\\1" VERSION_MAJOR "${VERSION_STR}")
string (REGEX REPLACE ".*#define +VERSION_MINOR +([0-9]+).*" "\\1" VERSION_MINOR "${VERSION_STR}")
string (REGEX REPLACE ".*#define +VERSION_PATCH +([0-9]+).*" "\\1" VERSION_PATCH "${VERSION_STR}")

if ((VERSION_MAJOR STREQUAL "") OR (VERSION_MINOR STREQUAL "") OR (VERSION_PATCH STREQUAL ""))
    message (FATAL_ERROR "Could not read version from Verson.hpp.")
else ()
    set (VERSION "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}")
    message (STATUS "Detected Demo v${VERSION}.")
endif ()

include (InstallRequiredSystemLibraries)

set (CPACK_PACKAGE_VERSION_MAJOR "${VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${VERSION_MINOR}")
set (CPACK_PACKAGE_VERSION_PATCH "${VERSION_PATCH}")

include (CPack)

