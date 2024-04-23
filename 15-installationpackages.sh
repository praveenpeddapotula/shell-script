#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/var/$SCRIPT_NAME-$TIMESTAMP.log
R="/e[31m"
G="/e[32m"
N="/e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "$2..$R FAILURE $N"
    else
    echo "$2..$G SUCCESS $N" 
}

if [ $USERID -ne 0 ]
then
    echo "please run the script with root access"
else
    echo "$USERID is a root user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"