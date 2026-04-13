
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was hsakmt-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

include( CMakeFindDependencyMacro )

# Locate dependent packages here.  Finding them propagates usage requirements,
# if any, to our clients and ensures that their target names are in scope for
# the build.  hsakmt has no cmake project dependencies so there is nothing to
# find.  If we switch to use find_package with external (to ROCm) library
# dependencies (ie libnuma) then those packages should be located here using
# find_dependencies as shown below.
#find_dependency(Bar, 2.0)

# If the option is ON link other dependent libraries dynamically
# If the option is OFF, then link libdrm and libdrm_amdgpu statically
if(ON)
  include( "${CMAKE_CURRENT_LIST_DIR}/hsakmtTargets.cmake" )
else()
  include( "${CMAKE_CURRENT_LIST_DIR}/hsakmt-staticdrmTargets.cmake" )
endif()
