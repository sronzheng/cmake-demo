
add_subdirectory (src)
add_subdirectory (test)
add_subdirectory (example EXCLUDE_FROM_ALL)

install (DIRECTORY include/
         DESTINATION include/mymath)

