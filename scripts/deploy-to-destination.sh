#!/bin/bash

DESTINATION=counter-app

ls

echo "Deploying to destination container"
az storage blob upload-batch --source build --pattern "*" --destination $DESTINATION
