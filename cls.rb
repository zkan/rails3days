class Person
  # Reserved method + overriable
  def initialize(name:)
    @name = name
  end

  # เป็น shorthand แทนที่เราจะประกาศ method ด้านล่าง
  #attr_reader :name

  #def name
  #  @name
  #end

  # เป็น shorthand แทนที่เราจะประกาศ method ด้านล่าง
  #attr_writer :name

  # ทำให้เรา assign ค่าให้ name ได้
  #def name=(value)
  #  @name = value
  #end

  # เป็นทั้ง reader และ writer
  attr_accessor :name

  # Method อะไรก็ตามอยู่ใต้ protected นี้ จะเป็น protected
  protected

  def display_name
  end

  # Method อะไรก็ตามอยู่ใต้ private นี้ จะเป็น private
  private

  def show
  end
end

class Employer < Person
end

class Employee < Person
end

john = Employer.new(name: "John")
puts john.name

john.name = "Kan"
puts john.name

john = nil
puts john&.lastname # & เป็น safe operand ดักไว้ก่อน
