# YAEasyIAP
## Yet Another EasyIAP

Goal is to create a command line tool to flash binary to SST89E516RD.

This project is forked from https://github.com/kikeEVO/SST-8051-Programer

Changes intended:
1. Replace QT library dependency.
2. Support for Windows first.
3. Support on a non-Windows platform.

Changes made:
1. Use https://github.com/jjuiddong/SerialPort for Windows serial communication.
2. Timing is tuned to support only 9600 baud.
3. Use Visual Studio Code to build Windows executable.

