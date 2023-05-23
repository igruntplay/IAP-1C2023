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

## PREGUNTAR ORDENADOS

def ordenados(s:array)->bool:
    for i in range(len(s)-1):
        if s[i] >= s[i+1]:
            return False
    return True

print(ordenados([0,0,2]))