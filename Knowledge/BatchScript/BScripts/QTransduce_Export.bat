:: Date: 2018-01-08
:: Author: Hao Wei
:: Description: This script is used to copy executable files of
::              QTransducer to released folder.
@ECHO off

:: Declare variables
SET src=D:\Documents\GitHub\QTransducer\QDasTransfer\bin\Debug
SET tick=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
SET dst=Z:\Projects\QTransducer\Released\T20%1\T20%1_%tick%
SET winrar="C:\Program Files (x86)\WinRAR\WinRAR.exe"
SET rarfile=Z:\Projects\QTransducer\Released\T20%1\T20%1_%tick%.rar


if "%1"=="" (
echo No arguments.
exit
)

:: Create temporary folder and files for output.
md %dst%
copy /y %src%\*.dll %dst%\*.dll
copy /y %src%\QDasTransducer.exe %dst%\QDasTransducer.exe
timeout /t 1

:: Make rar file as the final output file.
%winrar% a -r -s -ep -ibck %rarfile% %dst%
:: ep means remove directory infomation.
timeout /t 1

:: clear temporary files.
DEL /f /q %dst%\*.*
RD %dst%

:: show the final rar file in explorer.
explorer.exe /e,/select,%rarfile%