import random


def generarNrosAlAzar(n:int,desde:int,hasta:int)-> list[int]:
    L:list[int] = [] # inicializo mi lista en vacia
    contador:int = 0 # este es mi contador
    for i in range(desde,hasta):
        L.append(i)
    nuevaLista:list[int] = random.sample(L,n)
    return print(nuevaLista)


print(generarNrosAlAzar(1,0,10))