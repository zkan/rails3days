# minitest - เป็น PORO - อยู่ใน core ของ Ruby เลย
# assert_equal @name, "John"
#
# rspec - มีคนใช้เยอะกว่า จะเป็น DSL ของตัวเอง
# expect(@name).to eq("Kan")

require_relative "./test_helper"
require_relative "./computer_company"

class TestComputerCompany < Minitest::Test
  def setup
    @john = ComputerCompany::Person.new
    @john.name = "John"
  end

  def test_name
    assert_equal @john.name, "John"
  end

  def teardown
  end
end
