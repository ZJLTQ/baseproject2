#!/bin/bash

echo "[Pre-Requirement] Makesure install JDK 8.0+ and set the JAVA_HOME."
echo "[Pre-Requirement] Makesure install Maven 3.2.0+ and set the PATH."
	
export MAVEN_OPTS="$MAVEN_OPTS -Xmx1024m -XX:MaxPermSize=128M "

echo "[Step 1] run baseproject2 project in dev mode."
mvn spring-boot:run



