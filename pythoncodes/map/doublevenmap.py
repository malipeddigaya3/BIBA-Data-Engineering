def doubleven(n):
    if n%2==0:
        return n+2
    else:
        return n
l=[1,2,3,4]
print(list(map(doubleven,l)))

    