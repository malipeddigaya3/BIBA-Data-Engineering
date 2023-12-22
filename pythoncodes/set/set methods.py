s = {'g', 'e', 'k', 's'}
s.add('p')
print(s)
s.pop()#pops random element
print(s)
s.discard('g')#removes the specified element,if the element not present then doesnt throw any error.
print(s)
s3=s.copy()#forms a copy
print(s3)
print(s3.issubset(s))#returns true if subset
print(s.isdisjoint(s3))

print(s.isdisjoint(s3))
s4={9,8}
print(s4.isdisjoint(s3))
a={1,2,3}
b={4,5}
a.update(b)#updates the set
print(a)
c=b#if we dont use copy method and directly use = then the chnages in one set effects the other



