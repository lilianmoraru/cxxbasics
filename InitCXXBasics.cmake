## This module defines common functions and variables that should be accessible in every module

cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

# Project custom messaging macros
include(helpers/MacroCustomMessages)

# Widely-used macros to handle the cache variables
include(helpers/MacroOpt)
