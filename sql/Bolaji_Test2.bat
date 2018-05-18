@echo off

rem- Bolaji_Test2.bat, DATE: 11/6/2015, CREATOR: Agunbiade Bolaji
rem- make a directory batch

cls


echo make a directory in the root of drive C:
md c:\comp1172
pause

echo Change to C: drive 
cd /d c:\ 
pause

echo Navigate to the windows directory
cd c:\windows 
pause

echo Copy the program file write.exe to comp1172
copy c:\windows\write.exe c:\comp1172
pause

echo Navigate to the comp1172 dir
cd c:\comp1172
pause

echo rename the write.exe to write172.exe
ren write.exe write172.exe
pause

echo directory list of c:\comp1172
dir /p c:\comp1172
pause
echo.

echo ACTIVITY 2

cls


echo make a dir Textfile in comp1172
md c:\comp1172\Textfile
pause

echo copy all files with the .txt
copy c:\multisim\*.txt c:\comp1172\Textfile
pause

echo navigate to the Textfile dir
cd c:\comp1172\Textfile
pause

echo type the content of the partlist.txt
type partlist.txt|more
pause

echo do a dir list of files with r in the beginning
dir C:\multisim\r*.* 
pause
echo.

echo ACTIVITY 3

cls

echo navigate one dir level up using pointer
cd..
pause

echo delete the write172.exe
del c:\comp1172\write172.exe
pause

echo delete textfile and all its files
rd c:\comp1172\Textfile /s
pause

echo do a dir of comp1172
dir c:\comp1172
pause

echo ACTIVITY 4

cls

echo help for the ftype command
ftype /? /p
pause

echo help for all availabe commands
help /p
pause

echo ACTIVITY 5

cls

goto :Done
echo "Test is not done yet"

:Done
cd /d h:

rd c:\comp1172

dir c:\ /p

echo "Test is done, hurrah!" 
