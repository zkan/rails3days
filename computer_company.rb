#require "greetable"
require_relative "./greetable"

module ComputerCompany
  class Person
    include Greetable
  end
end
