from typing import List, Tuple

def cambiar(diccionario: List[Tuple[str, str]], aCambiar: List[str]) -> List[str]:
    res: List[str] = [] # Inicializo lista vacía.
    for i in aCambiar: # Recorro los caracteres que quiero cambiar
        for j in diccionario: # recorro los valores "key" de mi diccionario
            if i == j[0]: # si i matchea con el valor "key" de mi diccionario.
                res.append(j[1]) # Metele el segundo valor "value" de mi diccionario.
    return res

#print(cambiar([('a', 'A'), ('b', 'B')], ['a', 'b']))

def verifica(b:List[Tuple[str,str]],m:List[List[str]],n:List[List[str]])->bool:
    for i in range(len(m)):
        if cambiar(b,m[i]) != n[i]:
            return False
    return True

#print(verifica([('a','A'),('b','B')], [['a'],['b']], [['A'],['B']]))


def secuencia (L:List[int], n:int)->List[int]:
    res : List[int] = [] # Inicializo lista vacía
    for i in range(len(L)):
        if L[i] % 2 == 0:
            res.append(L[i]*n)
        else:
            res.append(L[i])
    return res

#print(secuencia([1,2,3,4],0))




def pertenece(s:list,e:int)->bool:
    for i in s:
        if i == e:
            return True
    return False

def perteneceACadaUno(s:list,e:int)->list:
    res:list=[]
    for i in s:
        if pertenece(i,e):
            res.append(True)
        else:
            res.append(False)
    return res

#print(perteneceACadaUno([[1,2,3],[1,2,3]],3))

def ordenados(s:list)->bool:
    for i in range(len(s)-1):
        if s[i] >= s[i+1]:
            return False
    return True

def filasOrdenadas(m: List[List[int]]) -> List[bool]:
    res:list[int]=[]
    for i in m:
        if ordenados(i):
            res.append(True)
        else:
            res.append(False)
    return res

#print(filasOrdenadas([[0,1,2,3],[0,1,2,3],[5,2,22]]))

def n1 (L:List[int],n:int)->int:
    return L[n]

#print(n1([1,2,3,4],0))

def quitarRepetidos (b:List[int])->List[int]:
    res:list[int]=[]
    for i in b:
        if i not in res:
            res.append(i)
    return res

print(quitarRepetidos([1,0,1,0,2,6,8,2]))