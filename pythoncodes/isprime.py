def isprime(n):
    for i in range(2,n):
        if n%i==0:
            return False
    else:
        return True
print(isprime(15))