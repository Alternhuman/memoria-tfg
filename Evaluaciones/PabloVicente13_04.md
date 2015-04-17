* Fecha: 13/04
* Evaluación: marcodiscover, marcoinstallkey.sh, deployer

* Perfil: Estudiante de la asignatura Arquitectura de Computadores.

#Evaluación

Se presenta al usuario con las soluciones propuestas a los problemas a los que los estudiantes se enfrentan comunmente en la asignatura Arquitectura de Computadores, a saber:

* Detección de cada nodo: Con la utilidad marcodiscover.py el usuario puede conocer las direcciones de todos los nodos sin tener que acceder físicamente a él. Dado que para poder utilizar un programa en MPI en varios nodos es necesario conocer la IP de cada uno previamente, valora positivamente esta utilidad.
* Lanzamiento de programas: La integración de marcodiscover.py en el lanzamiento de un programa para varios nodos es muy sencillo, dado que únicamente es necesario volcar la salida de marcodiscover.py en un fichero, o utilizar un pseudofichero en la shell:

marcodiscover.py >> hosts.txt
mpirun -np 20 -hostfile hosts.txt ./program

o 

mpirun -np 20 -hostfile <(marcodiscover.py) ./program

* Instalación de claves públicas

La comunicación entre nodos se realiza mediante sesiones ssh, por lo que utilizar una clave RSA evita tener que indicar el usuario y contraseña en cada nodo. Para ello se ha creado el script marcoinstallkey.sh que utiliza internamente la utilidad ssh-copy-id.

El usuario valora positivamente esta utilidad

Despliegue de los ejecutables

Uno de los problemas al que los estudiantes se enfrentan es la copia de los ejecutables en cada nodo. Para ello se está creando una herramienta de despliegue que permitirá realizar dicho despliegue. Debido a que aún no está completa se ha preguntado al sujeto qué valoraría en esta herramienta:

* Una forma de conocer el árbol de directorios del propio nodo, para seleccionar el directorio de instalación.
* La integración con la herramienta de estadísticas y el resto de componentes.

