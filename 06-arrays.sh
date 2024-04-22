#!/bin/bash
movies=("$@")

echo " first movie is : ${movies[0]} "
echo " second movie is : ${movies[1]} "
echo " All movies are : ${movies[@]} "
