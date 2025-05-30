print("Hello")



def sum(a:list) -> list:
    b = 0
    for i, value in a:
        b+= value
    return a


print(sum([3,3,3,3,3]))
