@echo off
echo [Pre-Requirement] Makesure install JDK 8.0+ and set the JAVA_HOME.
echo [Pre-Requirement] Makesure install Maven 3.2.0+ and set the PATH.

set MVN=mvn
set MAVEN_OPTS=%MAVEN_OPTS% -XX:MaxPermSize=128M

echo [Step 1] run baseproject2 project in dev mode.
call %MVN% spring-boot:run
if errorlevel 1 goto error


goto end
:error
echo Error Happen!!
:end
pause