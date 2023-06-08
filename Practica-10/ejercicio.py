from queue import LifoQueue

## ARCHIVOS
# 1.1
def contarLineas(archivo: str) -> int:
    f = open(archivo, 'r', encoding="utf-8")
    lineas: int = len(f.readlines())
    f.close()
    return lineas

# print(contarLineas("arc.txt"))
# aux
def esSeparador(caracter: str) -> bool:
    return caracter == " " or caracter == "\n" or caracter == "," or caracter == "."
# 1.2
def existePalabra(palabra: str, archivo: str) -> bool:
    f = open(archivo, 'r', encoding="utf-8")
    texto: str = f.read()
    palabra_actual: str = ""
    res: bool = False
    i: int = 0
    while (i < len(texto) and not res):
        if esSeparador(texto[i]):
            if palabra_actual == palabra:
                res = True
            palabra_actual = ""
        else:
            palabra_actual += texto[i]
        i += 1
    
    if palabra_actual == palabra: ## si al final no hay separador
        res = True

    return res

# print(existePalabra("hola", "arc.txt"))


# 1.3
def cantidadApariciones(palabra: str, archivo: str) -> int:
    f = open(archivo, 'r', encoding="utf-8")
    texto: str = f.read()
    palabra_actual: str = ""
    res: int = 0
    for i in range(len(texto)):
        if esSeparador(texto[i]):
            if palabra_actual == palabra:
                res += 1
            palabra_actual = ""
        else:
            palabra_actual += texto[i]

    if palabra_actual == palabra: ## si al final no hay separador
        res += 1

    f.close()
    return res
        
# print(cantidadApariciones("hola", "arc.txt"))

# 2


## EJERCICIO 2
def tope(p: LifoQueue([int])) -> int:
    res: int = 0
    res = p.get()
    p.put(res)
    return res

# 11
pila: LifoQueue = LifoQueue()
pila.put(1)
pila.put(4)
pila.put(2)
pila.put(3)

def copiarPila(p: LifoQueue([int])) -> LifoQueue([int]):
    lista_intermedia = []
    copia: LifoQueue([int]) = LifoQueue()

    while(p.empty() == False):
        lista_intermedia.append(pila.get())
    
    while(len(lista_intermedia) != 0):
        p.put(lista_intermedia[len(lista_intermedia) - 1])
        copia.put(lista_intermedia[len(lista_intermedia) - 1])
        lista_intermedia.pop()
    
    return copia
    



def buscarElMaximo(p: LifoQueue([int])) -> int:
    maximo: int = 0
    copia = copiarPila(p)
    if (not copia.empty()):
        maximo = copia.get()
    while (not (copia.empty())):
        # if tope(copia) > maximo:
            # maximo = copia.get()
        # copia.get()
        ultima: int = copia.get()  ## mas eficiente que usando tope?
        if ultima > maximo:
            maximo = ultima
    return maximo

# print(buscarElMaximo(pila))
## EJERCICIO 3

# 18
def agruparPorLongitud(archivo: str) -> dict:
    cantidades: dict = {}
    f = open("arc.txt", 'r')
    palabras: list([str]) = f.read().split()
    for palabra in palabras:
        long: int = len(palabra)
        if (not long in cantidades):
            cantidades[long] = 1
        else:
            cantidades[long] += 1
    
    f.close()
    return cantidades

print(agruparPorLongitud("arc.txt"))


