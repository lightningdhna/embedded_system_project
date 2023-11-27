@echo off
setlocal

REM Create the directories if they don't exist
if not exist build_file mkdir build_file
if not exist hex_file mkdir hex_file

REM Compile all .c files and direct the output files to build_file
for %%f in (*.c) do (
    sdcc -o build_file/ %%f
)

REM Use packihx on all .ihx files and put the output in hex_file
for %%f in (build_file\*.ihx) do (
    packihx %%f > hex_file\%%~nf.hex
)

endlocal