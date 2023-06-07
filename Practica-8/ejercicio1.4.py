
def recorrerPalabra(palabra:str)->bool:
    listaVocal:list[str] = ["a","e","i","o","u"]
    contador:int = 0
    for vocal in listaVocal:
              if palabra.count(vocal) >=1: # Esto, si por lo menos contiene una vocal
                    contador += 1
    if contador >= 3:
        return True
    else:
         return False

print(recorrerPalabra("amanda"))
print(recorrerPalabra("pepe"))
print(recorrerPalabra("muercielago"))