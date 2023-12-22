amount=float(input())
if amount<=1000:
    disc=amount*10/1000
elif amount>1000 and amount<=5000:
    disc=amount*20/1000
elif amount>5000 and amount<=10000:
    disc=amount*30/1000
else:
    disc=amount*50/1000
final=amount-disc
print(final)
