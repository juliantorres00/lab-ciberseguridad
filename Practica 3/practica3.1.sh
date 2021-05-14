`#!/bin/bash`
echo "Julian Torres";

import re

texto= "Lorem ipsum dolor sit ament, conseecteur adipiscing elit"

patron="Lorem"
x= re.search(patron,texto) #busca lo que le pongamos en patron en el texto
print(x.span())# nos dice la posicion en donde empieza y donde acaba la palabra que buscamos
