'''is and is not will check whether two variables are referring to the same memory or not.
• They return boolean value ( T, F ) as result.
• They are checked based on variable and not on value in the memory.
• For each input values ( user define ) python creates new memory even when the given values
are same.
• When we are assigning values in the program python will refer it to the same memory as it is
dynamically typed Programming language .'''

a=10
b=10
print(a is b)
c=20
print(a is not c)