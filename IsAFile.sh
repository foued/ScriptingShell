#!/bin/bash

# Write a shell script to see if the file "/etc/shadow" exists. If it does
# display "Shadow passwords are enabled". Next, check to see if you can 
# write to the file. If you can, display "You have permissions to edit 
# /etc/shadow". If you cannot, display "You do NOT have permissions to edit 
# /etc/shadow".

FILENAME="/etc/shadow"
if [ -e ${FILENAME} ]
then 
    echo "Shadow passwords are enabled"
fi 

if [ -w ${FILENAME} ] //test si le user courant a les droits d'ecrire sur ce fichier ou non
then
    echo "You have permissions to edit ${FILENAME}"
else 
    echo "You do NOT have permissions to edit ${FILENAME}"
fi
