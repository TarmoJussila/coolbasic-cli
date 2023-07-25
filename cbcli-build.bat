@echo off
setlocal

:: Load configuration file variables
for /f "tokens=1,* delims==" %%a in (cbcli-config.ini) do (
    set "%%a=%%b"
)

:: Compiler-related path variables
set "COMPILER_FILE_PATH=%COMPILER_DIR_PATH%\CBCompiler.exe"
set "COMPILER_CONFIG_PATH=%COMPILER_DIR_PATH%\Compiler"
set "COMPILER_OUT_PATH=%COMPILER_DIR_PATH%\Editor.out"

:: Override compiler build configuration
(
echo type=2
echo sourcedir=%SOURCE_DIR_PATH%
echo buildto=%TARGET_EXE_PATH%
echo force=0
) > "%COMPILER_CONFIG_PATH%"

:: Copy the source file content for compiling
copy /Y "%SOURCE_FILE_PATH%" "%COMPILER_OUT_PATH%"

:: Build with compiler
"%COMPILER_FILE_PATH%"

endlocal