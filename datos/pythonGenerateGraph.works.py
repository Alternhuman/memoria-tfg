#! /usr/bin/env/python3
# -*- coding: utf-8 -*-
from pylab import plot, show, title
import datetime
import csv, sys
FORMAT = "%Y-%m-%d %H:%M:%S"
dato =  []
fecha = []
titulo = ""
with open(sys.argv[1]) as csvfile:
    reader = csv.DictReader(csvfile)
    
    for row in reader:
        titulo  =  row['Módulo']
        dato.append(row['Datos'])
        fecha.append(datetime.datetime.strptime(row['Fecha/Hora'],  FORMAT))
        #print(row['Datos'], row['Fecha/Hora'])

plot(fecha,  dato)
title(titulo)
show()
