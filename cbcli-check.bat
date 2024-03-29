:: CoolBasic CLI - Check Syntax
@echo off
setlocal

echo "Check syntax started..."

:: Load configuration file variables
for /f "tokens=1,* delims==" %%a in (cbcli-config.ini) do (
    set "%%a=%%b"
)

:: Argument variable parameters
if not "%~1"=="" (
    set "SOURCE_FILE_PATH=%~1"
)
if not "%~2"=="" (
    set "SOURCE_DIR_PATH=%~2"
)
if not "%~3"=="" (
    set "TARGET_EXE_PATH=%~3"
)
if not "%~4"=="" (
    set "COMPILER_DIR_PATH=%~4"
)

:: Compiler-related path variables
set "COMPILER_FILE_PATH=%COMPILER_DIR_PATH%\CBCompiler.exe"
set "COMPILER_CONFIG_PATH=%COMPILER_DIR_PATH%\Compiler"
set "COMPILER_OUT_PATH=%COMPILER_DIR_PATH%\Editor.out"

:: Override compiler build configuration
(
    echo type=0
    echo sourcedir=%SOURCE_DIR_PATH%
    echo buildto=%TARGET_EXE_PATH%
    echo force=0
) > "%COMPILER_CONFIG_PATH%"

:: Copy the source file content for compiling
copy /Y "%SOURCE_FILE_PATH%" "%COMPILER_OUT_PATH%"

:: Check syntax with compiler
"%COMPILER_FILE_PATH%"

echo "Check syntax complete."

endlocal