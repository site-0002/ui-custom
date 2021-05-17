#!/usr/bin/bash

png() {
  size=(16 24 32 48 64 72 80 96 128 144 152 167 180 192 196 256 300 512)

  for i in "${size[@]}"; do
    inkscape -w "${i}" -h "${i}" -b ffffff -o icon-"${i}".png icon.svg
  done
}

ico() {
  convert -density 256x256 -background "#ffffff" icon.svg -define icon:auto-resize -colors 256 icon.ico
  identify icon.ico
}

"$@"
