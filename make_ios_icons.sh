#! /bin/bash


convert $1 -resize "57x57^" -gravity center +repage "$2/icon.png"
convert $1 -resize "20x20^" -gravity center +repage "$2/icon-20.png"
convert $1 -resize "40x40^" -gravity center +repage "$2/icon-20@2x.png"
convert $1 -resize "60x60^" -gravity center +repage "$2/icon-20@3x.png"
convert $1 -resize "48x48^" -gravity center +repage "$2/icon-24@2x.png"
convert $1 -resize "55x55^" -gravity center +repage "$2/icon-27.5@2x.png"
convert $1 -resize "29x29^" -gravity center +repage "$2/icon-29.png"
convert $1 -resize "58x58^" -gravity center +repage "$2/icon-29@2x.png"
convert $1 -resize "87x87^" -gravity center +repage "$2/icon-29@3x.png"
convert $1 -resize "40x40^" -gravity center +repage "$2/icon-40.png"
convert $1 -resize "80x80^" -gravity center +repage "$2/icon-40@2x.png"
convert $1 -resize "88x88^" -gravity center +repage "$2/icon-44@2x.png"
convert $1 -resize "50x50^" -gravity center +repage "$2/icon-50.png"
convert $1 -resize "100x100^" -gravity center +repage "$2/icon-50@2x.png"
convert $1 -resize "120x120^" -gravity center +repage "$2/icon-60@2x.png"
convert $1 -resize "180x180^" -gravity center +repage "$2/icon-60@3x.png"
convert $1 -resize "144x144^" -gravity center +repage "$2/icon-72@2x.png"
convert $1 -resize "72x72^" -gravity center +repage "$2/icon-72.png"
convert $1 -resize "76x76^" -gravity center +repage "$2/icon-76.png"
convert $1 -resize "152x152^" -gravity center +repage "$2/icon-76@2x.png"
convert $1 -resize "167x167^" -gravity center +repage "$2/icon-83.5@2x.png"
convert $1 -resize "172x172^" -gravity center +repage "$2/icon-86@2x.png"
convert $1 -resize "196x196^" -gravity center +repage "$2/icon-98@2x.png"
convert $1 -resize "512x512^" -gravity center +repage "$2/icon-512.png"
convert $1 -resize "1024x1024^" -gravity center +repage "$2/icon-1024.png"
convert $1 -resize "114x114^" -gravity center +repage "$2/icon@2x.png"
