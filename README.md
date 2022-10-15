# Computer Vision and Features Detection
#Harris Corner Detector

Nous voulons détecter les features dans les images ship1, ship2, castle1 et castle2

![castle1](https://user-images.githubusercontent.com/68650014/195927616-5a613866-e5e0-4a6e-9344-0ca237528f75.jpg)
![castle2](https://user-images.githubusercontent.com/68650014/195927626-230036a2-57f8-4307-bbf0-e02c3bcb6263.jpg)

Pour ce faire nous pouvons appliquer l’algorithm Harris d’abord manuellement puis avec les fonctions frédéfinies dans python.
Le détecteur de Harris, développé en 1988, est une technique très populaire permettant de repérer les coins dans une image.
Cet algorithme développé pour le tracking d'objets en 3D est utilisé pour résoudre le problème de détection de coins.
L'idée du détecteur est de considérer le voisinage d'un pixel (une fenêtre) et de déterminer les changements moyens de l'intensité dans le voisinage considéré lorsque la fenêtre se déplace dans diverses directions.

conclusion : Les points sont bien situés sur les coins pour les deux premieres images mais par contre, on trouve beaucoup de points sur les lignes dans les deux dernieres.
Le détecteur de Harris s'est avéré être une bonne solution pour la détection automatique des points d'intérêt.
Il permet de fltrer les points sur les lignes et de détecter des points situés sur des coins.
Le plus grand avantage de Harris Corner Detector est qu'il est invariant à des facteurs tels que la rotation, la translation et les changements d'éclairage.
Son seul gros inconvénient est que nous devons définir des valeurs de seuil différentes pour chaque image afin de détecter les points d'intérêt les plus importants.
Si la valeur de seuil utilisée est trop faible, l'algorithme peut finir par détecter une grande quantité de points avec des données d'image bruitées.

#SURF
Une autre façon serait d'utiliser l'algorithme SURF qui est partiellement inspiré par le descripteur SIFT mais qu'il surpasse en rapidité et, selon ses auteurs, plus robuste pour différentes transformations d'images.
En l'appliquant on peut bien remrquer que les résultats sont bien meuilleurs et les données bruités ne sont pas detectées comme features contrairement aux résultats de Harris. D’ou SURF plus robustes par rapport au zoom..etc
