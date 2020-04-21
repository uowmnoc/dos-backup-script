
@echo off

set winrar=%programfiles(x86)%\winrar\rar.exe
set outputpath="G:\BACKUP\"
set outputfile="BACKUP-SERVER-"

set output=%outputpath%%outputfile%

set dir1="%programfiles(x86)%\folder1\"
set dir2="%programfiles(x86)%\folder2\"
set dir3="c:\Inetpub\"
set dir4="g:\folder3\"

cd "%outputpath%"

forfiles -s -m %outputfile%*.* /d -5 -c "cmd /c del @path"


"%winrar%" a -r -m2 -agYYYY-MM-DD-hh-mm %output% %dir1% %dir2% %dir3% %dir4%
