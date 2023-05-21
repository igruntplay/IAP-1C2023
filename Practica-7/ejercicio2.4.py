def es_multiplo_de(n: int, m: int) -> bool:
    if m == 0:
        return False  # No es posible dividir por cero
    else:
        return n % m == 0

print(es_multiplo_de(0,0))