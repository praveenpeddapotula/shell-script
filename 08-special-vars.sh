#!/bin/bash
echo "All variables : $@"
echo "No of variables: $#"
echo "present working directory: $PWD"
echo "Home directory: $HOME"
echo "script Name: $0 "
echo "which user is running the script : $USER "
echo "Hostname : $HOSTNAME "
echo " process id of the current shell script : $$ "
sleep 100&
echo " process id of the last background command :$! "
echo " exit status : $? "