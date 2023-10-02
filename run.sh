#!/bin/bash

JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.8.0.7-1.fc38.x86_64
PAYARA_PATH=/opt/payara5

# launch payara (admin console in http://localhost:4848/)
sudo $PAYARA_PATH/bin/asadmin start-domain -d


# deploy EAR file
sudo $PAYARA_PATH/bin/asadmin deploy TIW-P1.war

# undeploy
sudo $PAYARA_PATH/bin/asadmin undeploy TIW-P1

