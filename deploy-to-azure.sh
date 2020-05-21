#!/bin/bash

function getJsonVal () { 
    python -c "import json,sys;sys.stdout.write(json.dumps(json.load(sys.stdin)$1))"; 
}

DESTINATION=counter-app

echo "Chek if destination container exists"
exitValue=`az storage container exists --name $DESTINATION | getJsonVal "['exists']"`

if [ "$exitValue" != "true" ] 
then
	echo "no existe"
	exit 1
fi

echo "Cleaning destination container"
#az storage blob delete-batch --source $DESTINATION

echo "Deploying to destination container"
#az storage blob upload-batch --source build --pattern "*" --destination $DESTINATION

