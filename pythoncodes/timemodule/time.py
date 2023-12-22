import time
print(time.ctime(0))    # convert a time expressed in seconds since epoch to a readable string

#epoch = when your computer thinks time began (reference point)
#print(time.time()) # return current seconds since epoch or returns the number of ticks from 1970
print(time.ctime(time.time())) # will get current time
print(time.localtime())#returns localttime in tuple of 9 elements like year,month,day,hour,min,sec,dayofweek(1-7),dayofyear(1-365),dalight

#time.asctime(time_tuple) = accepts a time_object or a tuple up to 9 elements and returns a string
#(year, month, day, hours, minutes, secs, #day of the week, #day of the year, dst)
time_tuple = (2020, 4, 20, 4, 20, 0, 0, 0, 0)
time_string = time.asctime(time_tuple)
print(time_string)
#time.asctime(time_tuple) = accepts a time_object or a tuple up to 9 elements and return seconds since epoch
#(year, month, day, hours, minutes, secs, #day of the week, #day of the year, dst)
#time_tuple = (2020, 4, 20, 4, 20, 0, 0, 0, 0)
##time_string = time.mktime(time_tuple)
print(time_string)


