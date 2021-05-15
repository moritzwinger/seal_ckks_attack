#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ckks_attack::ckks_attack" for configuration "Debug"
set_property(TARGET ckks_attack::ckks_attack APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ckks_attack::ckks_attack PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libckks_attack.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ckks_attack::ckks_attack )
list(APPEND _IMPORT_CHECK_FILES_FOR_ckks_attack::ckks_attack "${_IMPORT_PREFIX}/lib/libckks_attack.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
