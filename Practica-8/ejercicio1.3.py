def ceroEsPar(numeros:list)->list:
    for i in range(len(numeros)):
        if numeros[i] % 2 == 0:
            numeros[i] = 0
    return numeros

#print(ceroEsPar([1,2,2,6,3,1]))


## Hago un auxiliar para que me copie la lista original
def copiarLista(lista:list)->list:
    listaCopia = [0]*len(lista) ## Creo una nueva lista en base a la lista original
    for i in range(len(lista)):
        listaCopia[i]=lista[i] ## La lleno con las cosas de la lista original
    return listaCopia

def nuevaLista(lista:list)->list:
    listaCopia = copiarLista(lista)
    ceroEsPar(listaCopia)
    return lista, listaCopia

#print(nuevaLista([1,2,3,4,5,6]))

def quitarVocales(palabra:str)->str:
    vocales = 'aeiouAEIOU'
    longitudPalabra = 0
    # Determinar la longitud de la palabra
    for c in palabra:
        longitudPalabra += 1

    # Crear palabra sin vocales
    nuevaPalabra = ''
    for i in range(longitudPalabra):
        es_vocal = False
        for vocal in vocales:
            if palabra[i] == vocal:
                es_vocal = True
                break
        if not es_vocal:
            nuevaPalabra = nuevaPalabra + palabra[i]
    
    return nuevaPalabra    