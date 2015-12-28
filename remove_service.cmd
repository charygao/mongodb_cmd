REM Wrote in 2013-10-25 by Ankyo
REM Reference: http://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/

@ECHO OFF

cd /d %~dp0
cd ../bin

mongod.exe --remove

pause