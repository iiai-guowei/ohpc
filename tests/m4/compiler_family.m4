# SYNOPSIS
#
#   Test for OHPC supported compiler toolchains
#
#   COMPILER_FAMILY()
#
# DESCRIPTION
#
#   Queries configuration environment to detect compiler toolchain
#   loaded via Lmod. Sets CC, CXX, and FC to match supported
#   toolchains.
#
# CONTRIBUTORS
#
#   Karl W. Schulz <karl.w.schulz@intel.com>

AC_DEFUN([OHPC_COMPILER_FAMILY],
[

AC_MSG_CHECKING([for loaded OHPC compiler toolchain])

if test "x$LMOD_FAMILY_COMPILER" = "xgnu"; then
   CC=gcc
   CXX=g++
   FC=gfortran
   AC_MSG_RESULT([gnu])
elif test "x$LMOD_FAMILY_COMPILER" = "xgnu7"; then
   CC=gcc
   CXX=g++
   FC=gfortran
   AC_MSG_RESULT([gnu7])
elif test "x$LMOD_FAMILY_COMPILER" = "xgnu8"; then
   CC=gcc
   CXX=g++
   FC=gfortran
   AC_MSG_RESULT([gnu8])
elif test "x$LMOD_FAMILY_COMPILER" = "xgnu9"; then
   CC=gcc
   CXX=g++
   FC=gfortran
   AC_MSG_RESULT([gnu9])
elif test "x$LMOD_FAMILY_COMPILER" = "xllvm9"; then
   CC=clang
   CXX=clang++
# Use placeholder until F18 is added to LLVM [JCS 11/19/19]
   FC=gfortran
   AC_MSG_RESULT([llvm9])
elif test "x$LMOD_FAMILY_COMPILER" = "xllvm5"; then
   CC=clang
   CXX=clang++
   FC=flang
   AC_MSG_RESULT([llvm5])
elif test "x$LMOD_FAMILY_COMPILER" = "xintel"; then
   CC=icc
   CXX=icpc
   FC=ifort
   AC_MSG_RESULT([intel])
elif test "x$LMOD_FAMILY_COMPILER" = "xarm1"; then
   CC=armclang
   CXX=armclang++
   FC=armflang
   AC_MSG_RESULT([arm])
else
   AC_MSG_RESULT([unknown])
   echo
   AC_ERROR([Unknown compiler family - please load a compiler toolchain.])
fi

])
