#!/bin/bash

DURATION=19


if [ "$#" -eq 1 ]; then
  DURATION=$1
fi

sfdx force:auth:web:login -d -a DevHUb
sfdx force:org:create -a personalBox -s -f config/project-scratch-def.json -d $DURATION
sfdx force:source:push
sfdx force:org:open
echo 'Personal Box is good to go'

#To Add specific permission Set
#sfdx force:user:permset:assign -n #PermissionName
#To Import Data
#sfdx force:data:tree:import --plan ./data/data-plan.json
#To Import Data
#sfdx force:org:open -p /lightning/page/home
