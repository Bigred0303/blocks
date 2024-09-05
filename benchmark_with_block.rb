def benchmark
  start_time = Time.now
  yield # Executes the block of code passed to the benchmark method
  end_time = Time.now
  end_time - start_time # Returns the elapsed time
end

# Example usage
long_string = "apple" * 100000000
running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time} seconds to run"