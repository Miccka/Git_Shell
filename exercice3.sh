#!/bin/bash

echo "Saisir une valeur :"
read nombre
let total=nombre

for (( i=1; i<$nombre; i++ )); do
	let total=total*nombre
done
echo "La propre puissance du nombre est $total"
