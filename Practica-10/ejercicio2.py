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

#testBuscarElMaximo()

# Ejercicio 12
#def estaBienBalanceada(s:str)->bool
# preguntar ejercicio 12


# Ejercicio 13 Parte 3
from queue import Queue as Cola
#Ejercicio 13. Usando la funci´on generarNrosAlAzar() definida en la secci´on anterior, implementar una funci´on que arme una
#cola de enteros con los numeros generados al azar. Pueden usar la clase Queue() que es un ejemplo de una implementaci´on b´asica:
#c = Cola()
#c.put(1) # Encolar
#elemento = c.get() # Desencolar ()
#c.empty # Se pregunta si está vacía, devuelve bool

def armarColaDeEnteros(numeros:list[int])->Cola:
    c = Cola()
    numeros = generarNrosAlAzar(3,0,4)
    for i in numeros:
        c.put(i)
    return c

# Descomentar esto para probar el ejercicio 13
numeros = generarNrosAlAzar(3, 0, 4)
#cola = armarColaDeEnteros(numeros)
#cola = armarColaDeEnteros(numeros)
#print("Elementos en la cola:")
#while not cola.empty():
#    print(cola.get())
cola = armarColaDeEnteros(numeros)

# Ejercicio 14
def cantidadElementos(c:cola)->int:
    # Dada una cola, cuenta la cantidad de elementos que contiene.
    contador:int = 0 # Inicializo contador en cero
    while not c.empty():
        numero = c.get() # Desencola
        contador+=1
    return contador
# Probar ejercicio 14
#print("Cantidad de elementos en la cola:", cantidadElementos(cola))

# Ejercicio 15: Dada una cola de enteros, implementar una funcion buscarElMaximo que devuelva el maximo elemento, comprar con la versión usando pila
# misma idea: Recorrer la cola y armar una lista, sacar maximo
def buscarElMaximo(c:cola)->int:
    lista:list[int] = [] # Inicializo lista vacía
    while not c.empty():
        numero = c.get()
        lista.append(numero)
        print("La fila esta conformada por: ",lista)
    return max(lista)
#Probar ejercicio 15
#print("EJERCICIO 15 ",buscarElMaximo(cola))