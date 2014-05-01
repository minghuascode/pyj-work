@echo off

set PYJAMAS_HOME=c:\pytest\pyjsroot
set PYJAMAS_SITE=c:\pytest\pyjsroot\mypy\Lib\site-packages

rem set PYJAMAS_HOME=c:\pytest\pjm
rem set PYJAMAS_SITE=c:\pytest\pjm\site-packages

set PYTHONPATH=%PYJAMAS_HOME%;%PYJAMAS_SITE%;%PYTHONPATH%

set CMD_LINE_ARGS=
:setArgs
if ""%1""=="""" goto doneSetArgs
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto setArgs
:doneSetArgs

"c:\pytest\pyjsroot\mypy\Scripts\python.exe" %CMD_LINE_ARGS%

rem "c:\python276\python.exe" %CMD_LINE_ARGS%

