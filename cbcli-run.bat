:: CoolBasic CLI - Compile and Run
@echo off
setlocal

:: Load configuration file variables
for /f "tokens=1,* delims==" %%a in (cbcli-config.ini) do (
    set "%%a=%%b"
)

:: Argument variable parameters
if not "%~1"=="" (
    set "COMPILER_DIR_PATH=%~1"
)
if not "%~2"=="" (
    set "SOURCE_FILE_PATH=%~2"
)
if not "%~3"=="" (
    set "SOURCE_DIR_PATH=%~3"
)
if not "%~4"=="" (
    set "TARGET_EXE_PATH=%~4"
)

:: Compiler-related path variables
set "COMPILER_FILE_PATH=%COMPILER_DIR_PATH%\CBCompiler.exe"
set "COMPILER_CONFIG_PATH=%COMPILER_DIR_PATH%\Compiler"
set "COMPILER_OUT_PATH=%COMPILER_DIR_PATH%\Editor.out"

:: Override target executable path for running
set "TARGET_EXE_PATH=%COMPILER_DIR_PATH%\cbRun"

:: Override compiler build configuration
(
    echo type=1
    echo sourcedir=%SOURCE_DIR_PATH%
    echo buildto=%TARGET_EXE_PATH%
    echo force=0
) > "%COMPILER_CONFIG_PATH%"

:: Copy the source file content for compiling
copy /Y "%SOURCE_FILE_PATH%" "%COMPILER_OUT_PATH%"

:: Build with compiler
"%COMPILER_FILE_PATH%"

:: Run the executable
pushd "%SOURCE_DIR_PATH%"
"%TARGET_EXE_PATH%"
popd

endlocal