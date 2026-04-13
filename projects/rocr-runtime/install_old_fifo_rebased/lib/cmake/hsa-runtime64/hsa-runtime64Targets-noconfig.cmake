#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hsa-runtime64::hsa-runtime64" for configuration ""
set_property(TARGET hsa-runtime64::hsa-runtime64 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(hsa-runtime64::hsa-runtime64 PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "rocprofiler-register::rocprofiler-register"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libhsa-runtime64.so.1.21.0"
  IMPORTED_SONAME_NOCONFIG "libhsa-runtime64.so.1"
  )

list(APPEND _cmake_import_check_targets hsa-runtime64::hsa-runtime64 )
list(APPEND _cmake_import_check_files_for_hsa-runtime64::hsa-runtime64 "${_IMPORT_PREFIX}/lib/libhsa-runtime64.so.1.21.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
