#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo " $2 ..FAILURE "
    else
    echo" $1 .. SUCCESS "
    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run the script with root access "
else
    echo "you are root user "
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"
dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git "