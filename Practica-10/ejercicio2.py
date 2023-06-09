import random
from queue import LifoQueue as Pila

## Ejercicio 2.8
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

# Ejercicio 2.9
def apilarNumeros(n:int,desde:int,hasta:int):
    nuevaPila:Pila = Pila() ## Concepto de TADs
    numerosGenerados:list[int] = generarNrosAlAzar(n,desde,hasta)
    print(numerosGenerados)
    for i in numerosGenerados:
        nuevaPila.put(i)
    return nuevaPila

def imprimirPila():
    pila_prueba = apilarNumeros(3,0,5)
    while(not pila_prueba.empty()):
        print(pila_prueba.get())

pilita = apilarNumeros(2,0,4)
# Ejercicio 10
def cantidadElementos(p:Pila)->int:
    # dada una pila, que cuente la cantidad de elementos que tiene
    p = pilita
    i:int = 0 # Inicializo un contador en cero
    while(not p.empty()):
        p.get()
        i+=1
    return i

#print(cantidadElementos(pilita))

# Ejercicio 11 IDEA: Estoy pensando en listar la pila de entero con forma de lista y hacer el max de esa lista y listo.
def buscarelMaximo(pilita:Pila)->int:
    # dada una pila de enteros, implementar que devuelva el maximo de elementos que contiene
    listaDePila = pilaAlista(pilita)
    return max(listaDePila)

def pilaAlista(pilita:Pila)->list[int]:
    listaDePila: list[int] = [] # Inicializo mi lista vacía
    while not pilita.empty():
        elemento:int = pilita.get()
        listaDePila.append(elemento)
    return listaDePila

def testBuscarElMaximo():
    # Generar una pila con números al azar
    pilita = apilarNumeros(5, 0, 20)

    # Encontrar y imprimir el máximo de la pila
    maximo = buscarelMaximo(pilita)
    print("El máximo es:", maximo)

testBuscarElMaximo()

# Ejercicio 12
#def estaBienBalanceada(s:str)->bool
# preguntar ejercicio 12


# Ejercicio 13 Parte 3
from queue import Queue as Cola

#c = Cola()
#c.put(1) # Encolar
#elemento = c.get() # Desencolar ()
#c.empty # Se pregunta si está vacía, devuelve bool

#def armarColaDeEnteros(numeros:list[int])->Cola:
 #   c = Cola()
  #  numeros = generarNrosAlAzar(3,0,4)
   # for i in numeros

   # Ejercicio incompleto