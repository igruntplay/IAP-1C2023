def peso_pino(altura:int)->int:
    if (altura <= 3):
        return altura*100*3
    if(altura > 3):
        alturaB = altura-3
        return 900 + alturaB*200

#print(peso_pino(-5))

def es_peso_util(peso:int)->bool:
    if (400<=peso<=1000):
        return True
    else:
        return False
#print(es_peso_util(600))

def sirve_pino(altura:int)->bool:
    if(es_peso_util(peso_pino(altura))):
        return True
    else:
        return False
print(sirve_pino(2))
#print(min(1,2))

