def fib(n):
    f1=0
    f2=1
    print(f1)
    print(f2)
    for i in range(2,n):
        f3=f1+f2
        f1=f2
        f2=f3
        print(f3)
print(fib(9))



        