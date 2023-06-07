def esPar(n:int)->bool:
    if n % 2 == 0:
        return True
    else:
        False

def devolver_el_doble_si_es_par (n:int)->int:
    if esPar(n):
        return 2*n
    else: return n

def devolver_valor_si_es_par_sino_el_que_sigue(n:int)->int:
    if esPar(n):
        return n
    else: return n+1

#print(devolver_el_doble_si_es_par(1))
#print(devolver_valor_si_es_par_sino_el_que_sigue(1))

#print(devolver_valor_si_es_par_sino_el_que_sigue(2))

def devolver_el_doble_si_es_multiplo3_el_triple_si_esmultiplo9(n:int)->int:
    if (n%9!=0 and n%3==0):
        return 2*n
    elif n%9==0:
        return 3*n
    else: return n


def letras(n:str)->str:
    if(len(n)>=5):
        return "Tu nombre tiene muchas letras!"
    else:
        return "Tu nombre tiene menos letras"
    


def vacaciones(s:str, e:int) -> str:
    if(
        (60 > e and 18 >= e and s=="F")
           or 
        ( 18 >= e <65 and s=="M")):
        return "anda a trabajar"
    else: return "andá de vacaciones"

print(vacaciones("F",18))

print(vacaciones("M",70))

print(vacaciones("M",18))

print(vacaciones("F",60))