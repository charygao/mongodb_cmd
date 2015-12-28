REM Wrote in 2013-10-25 by Ankyo
REM Reference: http://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/

@ECHO OFF

REM Settings
set dbpath=d:\appdata\mongodb\data
set port=33717

REM Goto MongoDB directory
cd /d %~dp0
cd ../

REM MongoDB directory variable
set mongodb_dir=%cd%

REM Log directory
set log_dir=%mongodb_dir%\log

REM Window service config filename
set cfg=%mongodb_dir%\mongod.cfg


if exist %log_dir% (
  goto ERR01
) else (
  md %log_dir%
)

if exist %cfg% (
  goto ERR02
) else (
  echo logpath=%log_dir%\mongo.log > %cfg%
)

cd bin

mongod.exe --dbpath=%dbpath% --port=%port% --config %cfg% --install

goto SUCCESS

:ERR01
echo error: log dir exist: %log_dir% 
goto END

:ERR02:
echo error: cfg file exist: %cfg%
goto END

:SUCCESS
echo The window service of MongoDB has install success.

:END
pause