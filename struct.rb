Person = Struct.new :name, :age do
  def display_name
    "Mr. #{name}"
  end
end

john = Person.new("John", 18)
puts john.display_name

jack = Person.new(name: "Jack", age: 20)
puts jack.display_name
