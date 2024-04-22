#!/bin/bash
USERID=$( id -u )

if [ $USERID -ne 0 ]
then
echo " $USERID is not a root user please run the script with root access "
else
    echo " $USERID is a root user "
fi
