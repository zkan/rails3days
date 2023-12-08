module Greetable
  attr_accessor :name

  def hello(other_name)
    puts "#{name} said: Hello, #{other_name}"
  end
end
