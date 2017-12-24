:: this is a test.
@echo off

SET src=D:\GitHub\QTransducer\QDasTransfer\bin\Debug
SET folder=Z:\Projects\QTransducer\Released
SET dt=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
SET project=%1
SET tar=%folder%\T20%1\%dt%


if "%1"=="" (    
echo No arguments.
)else (
echo export to %tar% for release
md  %tar%
copy /y %src%\QDasTransducer.exe %tar%
copy /y %src%\*.dll %tar%
explorer.exe %tar%\..
) 

 