# Install script for directory: /scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/runtime/hsa-runtime

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/install_multiwait")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "binary" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1.18.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/rocr/lib/libhsa-runtime64.so.1.18.0"
    "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/rocr/lib/libhsa-runtime64.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1.18.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/opt/rocm/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "binary" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/rocr/lib/libhsa-runtime64.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "asan" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1.18.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/rocr/lib/libhsa-runtime64.so.1.18.0"
    "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/rocr/lib/libhsa-runtime64.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1.18.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhsa-runtime64.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/opt/rocm/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "asan" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/rocr/lib/libhsa-runtime64.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "binary" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/rocr" TYPE FILE FILES "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/runtime/hsa-runtime/LICENSE.md")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hsa" TYPE DIRECTORY FILES "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/runtime/hsa-runtime/inc/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64/hsa-runtime64Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64/hsa-runtime64Targets.cmake"
         "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/CMakeFiles/Export/f3d5bbc380cecda5de67f74ef003127c/hsa-runtime64Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64/hsa-runtime64Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64/hsa-runtime64Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64" TYPE FILE FILES "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/CMakeFiles/Export/f3d5bbc380cecda5de67f74ef003127c/hsa-runtime64Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64" TYPE FILE FILES "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/CMakeFiles/Export/f3d5bbc380cecda5de67f74ef003127c/hsa-runtime64Targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/hsa-runtime64" TYPE FILE FILES
    "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/hsa-runtime64-config.cmake"
    "/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/hsa-runtime64-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/core/runtime/trap_handler/cmake_install.cmake")
  include("/scratch/aamarnat/projects/rocm-systems/projects/rocr-runtime/build_multiwait/runtime/hsa-runtime/core/runtime/blit_shaders/cmake_install.cmake")

endif()

