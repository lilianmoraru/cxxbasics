cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

# Variables necessary in every module
include(InitCXXBasics)

# Activate faster linkers by default
include(accelerators/UseFasterLinkers)

# Activate the compiler cache tool
include(accelerators/UseCompilerCacheTool)
