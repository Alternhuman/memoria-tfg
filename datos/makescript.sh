#!/usr/bin/env bash

for f in *.csv;do
	python pythonGenerateGraph.py "$f" $1
	
done
exit
for m in "output/*.${1}"
do
	echo ${m}
	inkscape ${m} --export-pdf=${m}.pdf

done
