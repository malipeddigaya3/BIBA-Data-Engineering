import csv
with open("aboutcsv\sal.csv") as csvfile:
    r=csv.DictReader(csvfile)
    for row in r:
        print(row)