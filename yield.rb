def greet
  # ...
  #yield
  yield "Kan"
  #yield do
  #end
end

greet { puts "Hello" }
greet { |name| puts "Hello, #{name}" }
