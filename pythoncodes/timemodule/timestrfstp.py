import time
time_object = time.localtime() # local time
time_object = time.gmtime()  # UTC time
local_time = time.strftime("%B %d %Y %H:%M:%S", time_object)
print(local_time)
#time.strptime(string_string, format) = parses a string representing time/date and returns a struct_time object
time_string = "20 April, 2020"
time_object = time.strptime(time_string,"%d %B, %Y")
print(time_object)
#time.asctime(time_tuple) = accepts a time_object or a tuple up to 9 elements and returns a string
#(year, month, day, hours, minutes, secs, #day of the week, #day of the year, dst)
time_tuple = (2020, 4, 20, 4, 20, 0, 0, 0, 0)
time_string = time.asctime(time_tuple)
print(time_string)