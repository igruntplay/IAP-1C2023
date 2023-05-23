import array

## la mejor
def pertenece(s:array,e:int)->bool:
    return e in s
#print(pertenece([1,2,3,4],2))
#print(pertenece([1,2,3,4],7))


## mas pythonero
def pertenece2(s:array,e:int)->bool:
    for i in s:
        if i == e:
            return True
    return False

## mas imperativezco
def pertenece3(s:array,e:int)->bool:
    for i in range(len(s)):
        if s[i] == e:
            return True
    return False

def divideATodos(s:array,e:int)->bool:
    for i in s:
        if i % e != 0:
            return False
    return True

#print(divideATodos([1,2,3,4],1))

def sumaTotal(s:array)->bool:
    total:int = 0
    for i in s:
        total += i
    return total

#print(sumaTotal([1,1,1]))

## PREGUNTAR ORDENADOS ejercicio 4

def ordenados(s:array)->bool:
    for i in range(len(s)-1):
        if s[i] >= s[i+1]:
            return False
    return True

#print(ordenados([0,0,2]))

## Ejercicio 5
def listaDePalabras(palabras:list[str])->bool:
    for palabra in palabras:
        if len(palabra)>7:
            return True
    return False

#print(listaDePalabras(["a","aa","aaa","aaaaaaaaaaa"]))
## Ejercicio 6
def esPalindroma(palabra:str)->bool:
    for i in range(len(palabra)//2):
        if palabra[i] != palabra[len(palabra)-i-1]:
            return False
    return True

print(esPalindroma("aibofobia"))
## Itero sobre la primera mitad del string, en cada iteracion se compara el caracter en la posicion actual con el caracter en la posicion correspondiente de la otra punta del string, si no son iguales da false

## Ejercicio 7
#def analizarPass(clave:str)->str:
    #for caracter in clave:
        #if caracter.islower():
            #usaMinuscula
# Preguntar si se puede utilizar islower is upper isdigit etc.