# CoolBasic CLI

Simple command line tools for the CoolBasic game engine. By using the CoolBasic CLI tools, you don't have to use the CoolBasic Editor to build executables. This way you may use any IDE to program with CoolBasic, and you can check the syntax and run or build the project from a terminal environment - or directly from the batch files provided.

Prerequisites
-------

CoolBasic compiler (`CBCompiler.exe`) is required to use the CLI tools. The easiest way to obtain the compiler is to install the CoolBasic game engine. You can [download](https://www.coolbasic.com) the game engine from the official CoolBasic website.

1) Download and install the CoolBasic game engine (see link above)
2) Clone this repository or download its contents (`.ini` and `.bat` files)
3) Copy the `.ini` and the `.bat` files to your chosen project directory
4) Modify the values in `cbcli-config.ini` to match your project path and the compiler path
5) Great! Now you can simply execute the batch files to run or build your CoolBasic project!

Config
-------

The only file you need to configure is the `cbcli-config.ini` which contains the following variables:

| Variable          | Description             | Example value                   | Note                      |
| ----------------- | ----------------------- | ------------------------------- | ------------------------- |
| SOURCE_FILE_PATH  | Source code file path   | C:\CoolBasic\Help\lessons\01.cb | `.cb` source code file    |
| SOURCE_DIR_PATH   | Source directory path   | C:\CoolBasic\Help\lessons\      | Path has to end with `\`  |
| TARGET_EXE_PATH   | Target executable path  | C:\CoolBasic\cbRun              | `.exe` is auto-appended   |
| COMPILER_DIR_PATH | Compiler directory path | C:\CoolBasic\IDE                | Root of `CBCompiler.exe`  |

The variables and values are joined together with a `=` without any whitespace or quotations around values.

**Note:** You can also pass values as arguments to the batch files to override values from the `.ini` file (see below).

Check
-------

To check syntax: execute the batch file `cbcli-check.bat` by double-clicking it, or call it from a terminal:

```
./cbcli-check
```

Alternatively, execute the batch file with path arguments (to override values from the `.ini` file):

```
./cbcli-check "[SOURCE_FILE_PATH]" "[SOURCE_DIR_PATH]" "[TARGET_EXE_PATH]" "[COMPILER_DIR_PATH]"
```

Run
-------

To compile and run: execute the batch file `cbcli-run.bat` by double-clicking it, or call it from a terminal:

```
./cbcli-run
```

Alternatively, execute the batch file with path arguments (to override values from the `.ini` file):

```
./cbcli-run "[SOURCE_FILE_PATH]" "[SOURCE_DIR_PATH]" "[TARGET_EXE_PATH]" "[COMPILER_DIR_PATH]"
```

Build
-------

To build executable: execute the batch file `cbcli-build.bat` by double-clicking it, or call it from a terminal:

```
./cbcli-build
```

Alternatively, execute the batch file with path arguments (to override values from the `.ini` file):

```
./cbcli-build "[SOURCE_FILE_PATH]" "[SOURCE_DIR_PATH]" "[TARGET_EXE_PATH]" "[COMPILER_DIR_PATH]"
```

Docker image
-------

The CoolBasic CLI tools can also be found in a [Docker image](https://hub.docker.com/r/tarmojussila/coolbasic-cli-compiler) along with the CoolBasic compiler.
