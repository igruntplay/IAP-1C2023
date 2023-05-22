def es_nombre_largo(nombre:str)->bool:
    return 3 <= len(nombre) <= 8

print(es_nombre_largo("Gaspar"))
print(es_nombre_largo(" "))