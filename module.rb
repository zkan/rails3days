# ใช้เป็น mixin
module Greetable
  attr_accessor :name

  def hello(other_name)
    puts "#{name} said: Hello, #{other_name}"
  end
end

module ComputerCompany
  class Person
    include Greetable
  end
end

# ใช้เป็น namespace
john = ComputerCompany::Person.new
john.name = "John"
john.hello "Kan"
