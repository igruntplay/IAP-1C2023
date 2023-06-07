def esPar(n:int)->bool:
    if n % 2 == 0:
        return True
    else:
        False

def ej1(i:int)->int:
    while i < 11:
        print(i)
        i += 1

def ej2(i:int)->int:
    while 9 < i < 41:
        if(not esPar(i)):
           i+=1
           print(i)
        else: i+=1


def eco()->str:
    n = 0
    while n < 11:
        print('eco')
        n += 1


def cuentaRegresiva(i:int)->str:
    while i > 0:
        print(i)
        i -= 1
        if(i==0):
            return print("Despegue")

