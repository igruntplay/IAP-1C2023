def factorial1_2() -> int:
    res: int = 1
    for i in range(1,3):
        res *= i
    return res
print(factorial1_2())