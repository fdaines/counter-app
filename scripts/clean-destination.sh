#!/bin/bash

DESTINATION=counter-app

echo "Cleaning destination container"
az storage blob delete-batch --source $DESTINATION
