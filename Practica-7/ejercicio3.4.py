def es_bisiesto(year:int)->bool:
    return (year % 400 == 0) or (year % 4 == 0 and year % 100 != 0)

print(es_bisiesto(2024))
print(es_bisiesto(2016))
print(es_bisiesto(2022))