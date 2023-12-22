import csv
with open("aboutcsv\ee.csv",'w', newline="") as file:
    data=[{'Name': 'Alex', 'M1 Score': 62, 'M2 Score': 80},
        {'Name': 'Brad', 'M1 Score': 45, 'M2 Score': 56},
        {'Name': 'Joey', 'M1 Score': 85, 'M2 Score': 98}]
    h = ['Name', 'M1 Score', 'M2 Score'] 
    obj= csv.DictWriter(file, fieldnames=h)
    obj.writeheader()
    obj.writerows(data)
    