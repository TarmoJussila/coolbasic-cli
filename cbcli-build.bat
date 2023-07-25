@echo off

:: Project-related paths
set "SOURCE_FILE_PATH=[SOURCE_FILE_PATH.CB]"
set "SOURCE_DIR_PATH=[SOURCE_DIR_PATH\]"
set "EXE_PATH=[EXE_PATH]"

:: Tool-related paths
set "COMPILER_DIR_PATH=[COMPILER_DIR_PATH]"
set "COMPILER_FILE_PATH=%COMPILER_DIR_PATH%\CBCompiler.exe"

set "COMPILER_CONFIG_PATH=%COMPILER_DIR_PATH%\Compiler"
set "COMPILER_OUT_PATH=%COMPILER_DIR_PATH%\Editor.out"

:: Override compiler build configuration
(
echo type=2
echo sourcedir=%SOURCE_DIR_PATH%
echo buildto=%EXE_PATH%
echo force=0
) > "%COMPILER_CONFIG_PATH%"

:: Copy the source file content for compiling
copy /Y "%SOURCE_FILE_PATH%" "%COMPILER_OUT_PATH%"

:: Build with compiler
"%COMPILER_FILE_PATH%"