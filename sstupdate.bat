@echo off

set _hex=file name.hex

set _cmd=reg query HKLM\HARDWARE\DEVICEMAP\SERIALCOMM

for /f "tokens=3" %%p in ('%_cmd% ^| findstr /r /c:"VCP[0-9]"') do (
	for /f "tokens=2 delims=M" %%n in ("%%p") do (
		echo %%p found
		echo yaeasyiap.exe %%n "%_hex%"
		echo:
		call yaeasyiap.exe %%n "%_hex%"
		goto finish
	)
)

echo COM Port not found

:finish
echo:
echo This window will close automatically after the countdown.
timeout /t 180 /nobreak
