#!/bin/bash

let nb_note=0
let somme=0
let note=0

echo "Saisir une note (q pour quitter)"
read note
if [ $note = "q" ]
then
	let note=-1
fi
while [ "$note" -ge 0 ]
do
	if [ "$note" -ge 16 -a "$note" -le 20 ]
	then
		echo "tres bien"
		let nb_note=nb_note+1
	elif [ "$note" -ge 14 -a "$note" -lt 16 ]
	then
		echo "bien"
		let nb_note=nb_note+1
	elif [ "$note" -ge 12 -a "$note" -lt 14 ]
	then
		echo "assez bien"
		let nb_note=nb_note+1
	elif [ "$note" -ge 10 -a "$note" -lt 12 ]
	then
		echo "moyen"
		let nb_note=nb_note+1
	elif [ "$note" -ge 0 -a "$note" -lt 10 ]
	then
		echo "insuffisant"
		let nb_note=nb_note+1
	else
		echo "note erronée"
	fi
	let somme=somme+note
	read note
	if [ $note = "q" ]
	then
		break
	fi
done
let moyenne=somme/nb_note
echo "La moyenne est de $moyenne"
