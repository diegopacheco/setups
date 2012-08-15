@echo off

SETLOCAL enabledelayedexpansion

SET cp=""

FOR %%x IN ("%CLOJURE_HOME%\libs_reply\*.jar") DO (
  SET cp=!cp!;"%%~pfx%"
)

java -cp %cp% reply.ReplyMain %*

ENDLOCAL
