#!/bin/bash

LEFT=$1
BOTTOM=$2
RIGHT=$3
TOP=$4
NAME=$5

#download data
/home/moise/.local/bin/eio clip -o $NAME.tif --bounds $LEFT $BOTTOM $RIGHT $TOP
gdalwarp -co BIGTIFF=YES -co TILED=YES -co COMPRESS=LZW -co PREDICTOR=2 -t_srs "+proj=merc +ellps=sphere +R=6378137 +a=6378137 +units=m" -r bilinear -tr 10 10 $NAME.tif warp-10.tif
gdaldem hillshade -z 2 -co compress=lzw -co predictor=2 -co bigtiff=yes -compute_edges warp-10.tif $NAME-hillshade-10.tif
rm warp-10.tif
convert $NAME-hillshade-10.tif $NAME-hillshade-10.png
