from typing import List, Tuple

def cambiar(diccionario: List[Tuple[str, str]], aCambiar: List[str]) -> List[str]:
    res: List[str] = [] # Inicializo lista vacía.
    for i in aCambiar: # Recorro los caracteres que quiero cambiar
        for j in diccionario: # recorro los valores "key" de mi diccionario
            if i == j[0]: # si i matchea con el valor "key" de mi diccionario.
                res.append(j[1]) # Metele el segundo valor "value" de mi diccionario.
    return res

print(cambiar([('a', 'A'), ('b', 'B')], ['a', 'b']))

def verifica(b:List[Tuple[str,str]],m:List[List[str]],n:List[List[str]])->bool:
    for i in range(len(m)):
        if cambiar(b,m[i]) != n[i]:
            return False
    return True

print(verifica([('a','A'),('b','B')], [['a'],['b']], [['A'],['B']]))
