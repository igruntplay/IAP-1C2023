import random
from queue import LifoQueue as Pila

## Ejercicio 2.9
def generarNrosAlAzar(n:int,desde:int,hasta:int)-> list[int]:
    L:list[int] = [] # inicializo mi lista en vacia
    for i in range(desde,hasta):
        L.append(i)
    nuevaLista:list[int] = random.sample(L,n)
    return nuevaLista

#print(generarNrosAlAzar(1,0,10))

#p.put(i) # Apilar
#elemento = p.get() # desapilar, remover elemento de la pila
#p.empty() # devuelve true si es vacia
def apilarNumeros(n:int,desde:int,hasta:int):
    nuevaPila:Pila = Pila() ## Concepto de TADs
    numerosGenerados:list[int] = generarNrosAlAzar(n,desde,hasta)
    print(numerosGenerados)
    for i in numerosGenerados:
        nuevaPila.put(i)
    return nuevaPila

pila_prueba = apilarNumeros(3,0,5)

while(not pila_prueba.empty()):
    print(pila_prueba.get())