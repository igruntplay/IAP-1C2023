# Sí una pizza tiene 8 porciones => si tengo 3 comensales que comen 3 porciones c/u tengo 3*3 porciones consumidas en total. 9 porciones o sea sería 9 congruente a 1 en modulo 8. con estos parametros debería de devolver 2 pizzas.

def cantidad_de_pizzas(comensales: int,min_cant_de_porciones: int) -> int:
   total_porciones = comensales * min_cant_de_porciones
   pizzas = total_porciones // 8
   if total_porciones % 8 > 0:
    pizzas +=1
   return pizzas

print(cantidad_de_pizzas(3,7))