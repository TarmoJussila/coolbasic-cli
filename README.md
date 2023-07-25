# CoolBasic CLI

Simple command line tools for the CoolBasic game engine. By using the CoolBasic CLI tools, you don't have to open the CoolBasic Editor to run or build executables. This way you may use any IDE to program with CoolBasic, and you can run or build the project from a terminal environment - or directly from the batch file(s) provided.

Prerequisites
-------

CoolBasic compiler (*CBCompiler.exe*) is required to use the CLI tools. The easist way to obtain the compiler is to install the CoolBasic game engine. You can [download](https://www.coolbasic.com) the game engine from the official CoolBasic website.

1) Download and install the CoolBasic game engine (see link above)
2) Clone this repository or download its contents (the .ini and .bat files)
3) Copy `cbcli-config.ini`, `cbcli-run.bat` and `cbcli-build.bat` to your project directory
4) Modify the variables in `cbcli-config.ini` to match your project path and the compiler path
5) Great! Now you can simply execute the batch files to run or build your CoolBasic project!

Setup
-------

The only file you need to configure is the `cbcli-config.ini` which contains the following variables:

| Variable          | Description                | Example value                   | Note                                      |
| ----------------- | -------------------------- | ------------------------------- | ----------------------------------------- |
| SOURCE_FILE_PATH  | Source code file path      | C:\CoolBasic\Help\lessons\01.cb | CoolBasic project main `.cb` source file  |
| SOURCE_DIR_PATH   | Source directory path      | C:\CoolBasic\Help\lessons\      | Make sure directory path ends with `\`    |
| TARGET_EXE_PATH   | Target executable path     | C:\CoolBasic\cbRun              | Extension `.exe` is auto-appended         |
| COMPILER_DIR_PATH | Compiler directory path    | C:\CoolBasic\IDE                | Directory has to contain `CBCompiler.exe` |

Run
-------

Execute the batch file `cbcli-run.bat` by double-clicking it, or call it from a terminal environment:

- CMD: `cbcli-run`
- Shell: `./cbcli-run.bat`

Build
-------

Execute the batch file `cbcli-build.bat` by double-clicking it, or call it from a terminal environment:

- CMD: `cbcli-build`
- Shell: `./cbcli-build.bat`
