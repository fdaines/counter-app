#!/bin/bash

function getJsonVal () {
    python -c "import json,sys;sys.stdout.write(json.dumps(json.load(sys.stdin)$1))";
}

DESTINATION=counter-app2

echo "Chek if destination container exists"
returnValue=`az storage container exists --name $DESTINATION | getJsonVal "['exists']"`

if [ "$returnValue" != "true" ]
then
	echo "no existe"
	exit 1
fi
