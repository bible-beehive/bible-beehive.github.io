#!/bin/bash

for i in img/screenshots/screenshot*.png ; do
  optipng "$i"
  out="$(printf %s "$i" | sed 's@/screenshots/@&thumbnail-@')"
  convert "$i" -resize 300x "$out"
  optipng "$out"
done
