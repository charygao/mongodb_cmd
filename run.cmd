REM Wrote in 2013-10-25 by Ankyo
REM Reference: http://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/

@ECHO OFF

cd ../bin 

mongod.exe --dbpath d:\appdata\mongodb\data --port 33717

pause