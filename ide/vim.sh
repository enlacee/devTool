## MODE: COMMMAND
j = hacia abajo (behind down)
k = hacia arriba (behinf up)
l = adelante de la linea
h = atras de la linea
# NAVIGATOR IN TEXT
w = mueve inicio de cada palabra
b = mueve hacia atras inicio de la palabra
e = mueve final de cada palabra
# MOVIMIENTO POR OBJETOS DE TEXTO
( = principio de la frase.
) = final de la frase.
{ = principio del parrafo.
} = final del parrafo.
| = va a la primera columna visible
# MOVIMIENTO LIMITE DE LA PANTALL
H = primera linea de la pantalla (top view terminal)
M = centro de la pantalla (medium view terminal)
L = ultima linea de la pantalla. (low view terminal)
# SIN LIMITES WITH NUMER
3w = mueve 3 posiciciones de palabras
# REPETIR
30i- ESC = inserta 30 veces '-'
# BUSCAR DE CARACTERESEN LINEA (f)
fa = busca la letra (a) en la linea.j
3fa = busca la letra (a) 3 veces.
Fa = busca hacia atras la letra (a).
#
; o , = se busca la siguiente aparacion.
# OPERACIONES BASICAS DE SCROLL
CTRL+U = mueve hacia arriba.
CTRL+D = mueve hacia abajo.
# BUSQUEDA POR palabras
/ palabraAbuscar = busca la palabra hacia adelante. 
? palabraAbuscar = busca la palabra hacdcia atras. 

## MODE: INSERT
# MOVERSE ENTRE () {} []
% = busca inicio y fin
#
CTRL+G = muestra en que linea estas.
#inicio y fin de archivo
ALT+GR+ [ ]
# congiguracion basica de > vim ~/.vimrc
syntax on
set number
set expandtab
set ts=4
set autoident
