header = ['Name', 'M1 Score', 'M2 Score']
data = [['Alex', 62, 80], ['Brad', 45, 56], ['Joey', 85, 98]]
with open("aboutcsv\ex.csv", 'w') as file:
    for header in header:
        file.write(str(header)+', ')
    file.write('\n')
    for row in data:
        for x in row:
            file.write(str(x)+', ')
        file.write('\n')
