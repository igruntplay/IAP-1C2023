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
print(devolver_valor_si_es_par_sino_el_que_sigue(1))

print(devolver_valor_si_es_par_sino_el_que_sigue(2))