def fib(n):
    f1=0
    f2=1
    c=0
    while(c<n):
        print(f1)
        f3=f1+f2
        f1=f2
        f2=f3
        c=c+1
print(fib(9))