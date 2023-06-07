from typing import List, Tuple


def saldo(movimientos:list[Tuple[str,int]])->int:
    saldoInicial:int = 0
    for movimiento in movimientos:
        tipo:str
        monto:int
        tipo, monto = movimiento
        if tipo == "I":
             saldoInicial += monto
        elif tipo == "R":
            saldoInicial -= monto
    return saldoInicial
print(saldo([["I",1000],["I",500]]))