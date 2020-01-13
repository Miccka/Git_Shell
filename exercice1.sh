#!/bin/bash

echo "Saisir une note :"
read note
if [ $note -ge 16 -a $note -le 20 ]
then
	echo "tres bien"
elif [ $note -ge 14 -a $note -lt 16 ]
then
	echo "bien"
elif [ $note -ge 12 -a $note -lt 14 ]
then
	echo "assez bien"

elif [ $note -ge 10 -a $note -lt 12 ]
then
	echo "moyen"
elif [ $note -ge 0 -a $note -lt 10 ]
then
	echo "insuffisant"
else
	echo "note erronée"
fi
