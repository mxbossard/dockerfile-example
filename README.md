
## Build 1
Création d'une première image qui affiche un "Hello World !" paramétré en boucle.

``` bash
git checkout build1
docker build -t build1 .
docker run --rm -it build1
```

En fournissant la variable d'environnement NAME
``` bash
docker run --rm -it -e "NAME=Maxime" build1
```

## Build 2
Integration d'un script shell avec arguments dans le conteneur et démarrage du script.

``` bash
git checkout build2
docker build -t $( git rev-parse --abbrev-ref HEAD ) .
docker run --rm -it build2
docker run --rm -it -e "NAME=Maxime" build2
```

##Build 3
Pour plus de souplesse, on inscrit notre script comme entrypoint.

``` bash
git checkout build3
docker build -t $( git rev-parse --abbrev-ref HEAD ) .
docker run --rm -it $( git rev-parse --abbrev-ref HEAD )
```

__Ainsi on peut passer les arguments du script directement en argument du docker run !__
``` bash
docker run --rm -it build3 Maxime
```

