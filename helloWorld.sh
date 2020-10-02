#! /bin/sh

ARGS="$@"
>&2 echo "Execution du script $0 de l'exemple build2 with args [$ARGS] ..."

# Si une variable d'environnement NAME est défini, elle à la précédence sur l'argument du script.
#test -n "$NAME" || NAME="$1"

# NAME prend toujours la valeur du premier paramètre du script.
NAME="$1"

while true
do
	echo "Hello $NAME !"
	sleep 1
done
