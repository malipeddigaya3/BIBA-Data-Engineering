
var={'hexa',3,'hexa'}
print(var)
print(type(var))
    
s1={1,'a',33,'d'}
#add to a set
s1.add(56)
print(s1)
s=set(['a','b','c'])
print(s)

s3=frozenset(['a',33,4,6,'g'])
print(s3)
#adding to frozen set throws error
s3.add(3)
print(s3)