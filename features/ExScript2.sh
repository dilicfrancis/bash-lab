#! /usr/bin/bash

read -p "What would you like to call the script? " ScriptName

touch ${ScriptName}.sh
chmod +x ${ScriptName}.sh
echo "script is ready"

