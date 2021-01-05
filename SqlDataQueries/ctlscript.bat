@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\User\Desktop\the\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\ingres\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\ingres\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\mysql\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\mysql\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\postgresql\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\apache\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\apache\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\openoffice\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\resin\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\resin\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\jetty\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\jetty\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\subversion\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\User\Desktop\the\lucene\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\lucene\scripts\ctl.bat START)
if exist C:\Users\User\Desktop\the\third_application\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\User\Desktop\the\third_application\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\third_application\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\lucene\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\User\Desktop\the\subversion\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\subversion\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\jetty\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\jetty\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\resin\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\resin\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\User\Desktop\the\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\apache\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\apache\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\ingres\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\ingres\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\mysql\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\mysql\scripts\ctl.bat STOP)
if exist C:\Users\User\Desktop\the\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\User\Desktop\the\postgresql\scripts\ctl.bat STOP)

:end

