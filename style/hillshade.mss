/* Voir les paramètres possibles sur: */
/* https://cartocss.readthedocs.io/en/latest/api/mapnik/3.0.6.html#raster */
/* Aussi, j'ai défini la couche hillshade à la fin de project.mml */
/* Déplacer la couche plus haut ou plus bas permet de controler quelle */
/* couche est tracée en première, à essayer de réorganiser pour essayer */
/* de ne pas avoir ce rendu dans l'eau... Ou changer le .tif à la main ? */

#hillshade {
    raster-opacity: 0.25;
    raster-scaling: bilinear;
        raster-comp-op: src;
        raster-filter-factor:5;
}

#hillshade-paris {
    raster-opacity: 0.4;
    raster-scaling: bilinear;
        raster-comp-op: src;
        raster-filter-factor:5;
}
