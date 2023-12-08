def sum(a, b)
  a + b # Prefer to remove return
end

def sum2(a, b)
  return 0 if a.nil? || b.nil? # Use as guard

  a + b
end

def sum3(a = 0, b = 0)
  a + b
end

def sum4(a:, b: 0)
  a + b
end

# sum4 a: 1
# sum4 b: 1
# sum4 b: 1, a: 10

def sum5(*args)
  args.each do |arg|
    puts arg
  end
end

def sum6(**kwargs)
  kwargs.each do |k, v|
    puts k
  end
end

def sum7(h: {})
end

# Try Exception

begin
  a + b
rescue
  puts "error"
ensure
  puts 0
end

# Ruby community recommends this in method
def sum7(a, b)
  a + b
# rescue (all exceptions when use only rescue)
rescue NameError
  puts "error"
end
