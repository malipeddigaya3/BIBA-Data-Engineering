#list slicing:in order to access a range of elements in a list, you need to slice a list.
#Indexing is a technique for accessing the elements of a Python List.
Lst = [50, 70, 30, 20, 90, 10, 50]
 
# Display list
print(Lst[::])
print(Lst[-7::1])
print(Lst[1:5])
List = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(List[3:9:2])
print(List[::2])
print(List[::])
new_list=List[:4]+List[7:]
print(new_list)
