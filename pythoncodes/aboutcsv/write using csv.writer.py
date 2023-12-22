header = ['Name', 'M1 Score', 'M2 Score']
data = [['Alex', 62, 80], ['Brad', 45, 56], ['Joey', 85, 98]]
import csv
with open("aboutcsv\ex.csv",'w',newline='') as file:
    obj=csv.writer(file)
    obj.writerow(header)
    obj.writerows(data)
    