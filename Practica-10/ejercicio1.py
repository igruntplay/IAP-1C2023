## Ejercicio 1
# Ejercicio 1.1
def contarlineas (nombre_archivo:str)->int:
    f = open(nombre_archivo,'r',encoding="utf-8")
    lineas:int = len(f.readlines())
    f.close()
    return lineas

print(contarlineas("test.txt"), "Lineas")

# Ejercicio 1.2
def existePalabra(palabra:str,nombre_archivo:str)->bool:
    f = open(nombre_archivo,'r',encoding="utf-8")
    texto:str = f.read()
    if palabra in texto:
        return True 
    else: 
        return False

print(existePalabra("Grunt","test.txt"))


# Ejercicio 1.3
def cantidadApariciones(nombre_archivo:str,palabra:str)->int:
        f = open(nombre_archivo,'r',encoding="utf-8")
        texto:str = f.read().split()
        return texto.count(palabra)

print(cantidadApariciones("test.txt","Grunt"))

## Ejercicio 2
#def clonarSinComentarios(archivo : str):
#Incompleto