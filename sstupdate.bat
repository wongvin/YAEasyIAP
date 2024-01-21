@echo off

set _hex=binary.hex
set _cmd=reg query HKLM\HARDWARE\DEVICEMAP\SERIALCOMM

for /f "tokens=3" %%p in ('%_cmd% ^| findstr /r /c:"VCP[0-9]"') do (
	for /f "tokens=2 delims=M" %%n in ("%%p") do (
		echo %%p found
		call yaeasyiap.exe %%n "%_hex%"
	)
)
