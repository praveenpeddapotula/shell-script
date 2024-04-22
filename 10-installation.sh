#!/bin/bash
USERID=$( id -u )

if [ $USERID -ne 0 ]
then
echo " $USERID is not a root user please run the script with root access "
else
    echo " $USERID is a root user "
fi
dnf install mysql -y

if [ $? -ne 0 ]
then
    echo " Installing mysql ..failure "
else
    echo " Installing mysql ..success "
fi
