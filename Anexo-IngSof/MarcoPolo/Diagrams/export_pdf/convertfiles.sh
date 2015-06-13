#!/bin/bash

for file in *.svg; do
inkscape ${file} --export-pdf="`basename $file .svg`.pdf";
done

