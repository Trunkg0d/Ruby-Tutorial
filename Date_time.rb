#Getting Current Date and Time
time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect

puts

puts "Current Time : " + time1.inspect
puts time1.year    # => Year of the date 
puts time1.month   # => Month of the date (1 to 12)
puts time1.day     # => Day of the date (1 to 31 )
puts time1.wday    # => 0: Day of week: 0 is Sunday
puts time1.yday    # => 365: Day of year
puts time1.hour    # => 23: 24-hour clock
puts time1.min     # => 59
puts time1.sec     # => 59
puts time1.usec    # => 999999: microseconds
puts time1.zone    # => "UTC": timezone name
puts
#--------------------------------------------------------------------------------------------------------------------------------

time = Time.new
# July 8, 2008
Time.local(2008, 7, 8)  
# July 8, 2008, 09:10am, local time
Time.local(2008, 7, 8, 9, 10)   
# July 8, 2008, 09:10 UTC
Time.utc(2008, 7, 8, 9, 10)  
# July 8, 2008, 09:10:11 GMT (same as UTC)
Time.gm(2008, 7, 8, 9, 10, 11)  

#Following is the example to get all the components in an array in the following format −

time = Time.new
values = time.to_a
puts "#{values}"
puts

#This array could be passed to Time.utc or Time.local functions to get different format of dates as follows −
time = Time.new
values = time.to_a
puts Time.utc(*values)
puts

#--------------------------------------------------------------------------------------------------------------------------------

#Time Arithmetic
now = Time.now          # Current time
puts now

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff
puts