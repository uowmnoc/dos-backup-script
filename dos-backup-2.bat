@echo off

set zip=%programfiles%\7-zip\7z.exe
set outputpath="C:\users\user\Desktop\"
set outputfile=BACKUP-SERVER-
set zipfile="%outputfile%%DATE:~-4%-%DATE:~3,2%-%DATE:~7,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~-5,2%.7z"

set output=%outputpath%%outputfile%

set dir1="C:\users\user\Desktop\VPN-NEW"
set dir2="%programfiles%\\OpenVPN"

cd "%outputpath%"

forfiles -s -m %outputfile%*.* /d -5 -c "cmd /c del @path"

"%zip%" a -t7z %zipfile% %dir1% %dir2%%
