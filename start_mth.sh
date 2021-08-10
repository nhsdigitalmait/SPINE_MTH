#!/bin/bash

echo $_JAVA_OPTIONS

$JAVA_HOME/bin/java -jar $TKWROOT/TKW.jar -simulator $TKWROOT/config/SPINE_MTH/tkw.properties
