## This module defines helper macros to set options(cached variables)

cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

# @macro opt
# Macro helper to set a cache value.
# Does not overwrite the value if it was already cached.
#
# `description` - the description that will be displayed in CMake cache editor
# `var_type`    - the type of the variable(BOOL, FILEPATH, PATH, STRING, INTERNAL)
# `var_value`   - the value `var_name` will be set to
# `var_name`    - variable name
macro(opt  description  var_type  var_value  var_name)
  set(${var_name}  ${var_value} CACHE ${var_type}  "${description}")
endmacro()

# @macro opt_ifndef
# Macro helper to set a cache value.
# Sets the cache value only if the variable(including local variables) was not defined or it is set to an empty string.
macro(opt_ifndef  description  var_type  var_value  var_name)
  if(NOT DEFINED ${var_name} OR "${${var_name}}" STREQUAL "")
    set(${var_name}  ${var_value} CACHE ${var_type}  "${description}"  FORCE)
  endif()
endmacro()

# @macro opt_overwrite
# Macro helper to set a cache value.
# Sets the cache value or overwrites the value if the variable already exists.
macro(opt_overwrite  description  var_type  var_value  var_name)
  set(${var_name}  ${var_value} CACHE ${var_type}  "${description}"  FORCE)
endmacro()
