require_relative "./test_helper"
require_relative "./greetable"

class MockPerson
  include Greetable
end

class TestGreetable < Minitest::Test
  def test_hello
    john = MockPerson.new
    john.name = "John"

    assert_equal john.name, "John"
  end
end
