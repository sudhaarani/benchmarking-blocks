def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now
    
    # Calculate the 200th Fibonacci number
  yield
    
  end_time = Time.now
    
    # This will return the difference in the timestamps in seconds
  running_time = end_time - start_time
  return running_time
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"