This is the README.txt file.

This directory contains the following files:

README.txt - this file
yaeasyiap.exe - Executable built Dec 17 2023 20:49:15 of size 199,294 bytes
sstupdate.bat - Batch file to find COM port of a connected USB-to-serial cable and run the executable file automatically.
800294 - Mini Controller v20231216@1217 (SST).hex - SST hex file to be downloaded to the SST chip by batch file.

1. Before Running the Batch File

The USB-to-serial cable must be connected to the PC prior to starting the sstupdate.bat batch file.
The USB-to-serial cable is expected to create a USB Serial Port (a virtual COM port) under Ports (COM & LPT)
in Windows Device Manager.
The SST hex file must be in the same directory as the yaeasyiap.exe executable file.
The SST hex file name must be specified in the batch file (without quotes). Example:

	set _hex=800294 - Mini Controller v20231216@1217 (SST).hex

2. Running the Batch File

Start the batch file from a File Explorer to launch the SST chip firmware update process.
Upon successfully finding a corresponding port number of the virtual COM port,
the batch file will run yaeasyiap.exe with the correct parameters automatically.
The batch file will open a Command Prompt window during the firmware update process.
The Command Prompt window will close automatically in 180 seconds after a successful firmware update. 

3. Running YAEasyIAP Directly

Alternatively, yaeasyiap.exe can be run from a Windows Command Prompt directly.
Running the program without any parameters will display its Usage.

	YAEasyIAP
	Yet Another EasyIAP for SST89E516DR2
	Build: Dec 17 2023 20:49:15

	Usage: yaeasyiap.exe <port_num> <filename.hex>
	Example: yaeasyiap.exe 1 "800294 - Mini Controller v20220909@0823 (SST).hex"

The SST hex file must be enclosed with quotes if the filename contains whitespaces.

4. Windows Shortcut on Desktop

A Windows shortcut to the batch file can be created on the Windows Desktop. To do that, move the folder containing
the batch file, the executable file, and the SST file to the Desktop folder. In the File Explorer, select the batch file,
follow by right-click and then select <Create shortcut>. A shortcut file will be created in the directory. Move the shortcut file
out of the directory to the Desktop folder and rename it appropriately. 

5. Batch File Output Examples

The following output in the Command Prompt is expected for a successful run:

	COM4 found
	yaeasyiap.exe 4 "800294 - Mini Controller v20231216@1217 (SST).hex"

	YAEasyIAP
	Yet Another EasyIAP for SST89E516DR2
	Build: Dec 17 2023 20:49:15

	COM4 opened
	PRESS [Reset Button] to start or <Ctrl-C> to abort
	Connecting
	Device connected
	Erasing 100%
	Programming 100%
	Programming done
	Device running

	This window will close automatically after the countdown.

	Waiting for 180 seconds, press CTRL+C to quit ...

The following output in the Command Prompt is expected if an FTDI-based USB-to-Serial cable is not attached to the PC:

	COM Port not found

	This window will close automatically after the countdown.

	Waiting for 180 seconds, press CTRL+C to quit ...

6. Disclaimer

These files and setup have been tested on a Windows 10 Business machine.
The USB-to-Serial cable tested is based on an FTDI USB to UART converter.
 
End of File