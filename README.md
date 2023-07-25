# CoolBasic CLI

Simple command line tools for the CoolBasic game engine. By using the CoolBasic CLI tools, you don't have to open the CoolBasic Editor to run or build executables. This way you may use any IDE to program with CoolBasic, and you can run or build the project from a terminal environment - or directly from the batch file(s) provided.

Prerequisites
-------

CoolBasic compiler (*CBCompiler.exe*) is required to use the CLI tools. Easist way to obtain the compiler is to install the CoolBasic game engine. You can [download](https://www.coolbasic.com) the game engine from the official CoolBasic website.

1) Download and install the CoolBasic game engine (see link above)
2) Clone this repository or download its contents (the batch files)
3) Copy `cbcli-run.bat` and `cbcli-build.bat` to your CoolBasic project directory
4) Modify the "project-related paths" in the batch files to match the compiler path and your project path
5) Great! Now you can simply execute the batch files to run or build your CoolBasic project!

Run
-------

You can simply execute the batch file `cbcli-run.bat` by double-clicking it, or call it from a terminal environment:

- CMD: `cbcli-run`
- Shell: `./cbcli-run.bat`

Build
-------

You can simply execute the batch file `cbcli-build.bat` by double-clicking it, or call it from a terminal environment:

- CMD: `cbcli-build`
- Shell: `./cbcli-build.bat`
