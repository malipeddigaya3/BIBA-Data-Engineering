import numpy as np

arr = np.array([[1,2,3,4,5], [6,7,8,9,10]])

print('5th element on 2nd row: ', arr[1, 4])
print(arr[[1,0,1],[0,1,2]])
print(arr[0:2])
print(arr[1:])