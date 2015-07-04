#! /usr/bin/env/python3
# -*- coding: utf-8 -*-
import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
from pylab import plot, show, title, savefig
import datetime
import csv, sys, os
from glob import glob
FORMAT = "%Y-%m-%d %H:%M:%S"
dato =  []
fecha = []
titulo = ""
fecha_ini = ""
fecha_fin = ""
if len(sys.argv) == 3:
    path = sys.argv[1]
    extension = sys.argv[2]
elif len(sys.argv) == 2:
    path = sys.argv[1]
    extension = "pdf"
else:
    path = os.getcwd()
    extension = "pdf"
counter = 0
for file_path in glob(os.path.join(path, "*.csv")):
    with open(file_path) as csvfile:
        reader = csv.DictReader(csvfile)
        
        for row in reader:
            if fecha_ini == "":
                fecha_ini  =  datetime.datetime.strptime(row['Fecha/Hora'],   FORMAT)
            titulo  =  row['Módulo']
            dato.append(row['Datos'])
            fecha.append(datetime.datetime.strptime(row['Fecha/Hora'],  FORMAT))
            fecha_fin = datetime.datetime.strptime(row['Fecha/Hora'],   FORMAT)
            #print(row['Datos'], row['Fecha/Hora'])

    counter = counter + 1
    plt.figure(figsize=(18,4))
    plt.plot(fecha,  dato)
    plt.title(titulo)
    #show()
    #plt.show()
    plt.savefig("output/{0}-{1}-{2}.{3}".format(titulo, fecha_ini, fecha_fin, extension))
    #plt.show()
    #plt.savefig("test2.png")
    plt.close()
