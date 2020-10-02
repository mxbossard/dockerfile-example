
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


