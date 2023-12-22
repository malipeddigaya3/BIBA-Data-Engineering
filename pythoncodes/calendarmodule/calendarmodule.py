import calendar
print(calendar.isleap(2023))
print(calendar.leapdays(2012,2014))#number of leapdays in between the years given
#print(calendar.calendar(2023,w=0,l=1,c=3))#width,number of lines for each week,column seaprated by cspaces
print(calendar.month(2023,12,w=2,l=1))#returns month asked
print(calendar.monthcalendar(2023,12))#returns month as sublists with int
print(calendar.monthrange(2023,12))#Returns two integers. 1- code of the weekdayfirstday;
#2-number of daysin d month
#print(calendar.prcal(2023,w=2,l=1,c=6))
#Like print calendar.calendar(year,w,l,c).
print(calendar.firstweekday( ))#default monday=0-sun=6
print(calendar.setfirstweekday(2))
print(calendar.firstweekday( ))
print(calendar.weekday(2023,12,18))#codes(mon-0)to(sun-6)



