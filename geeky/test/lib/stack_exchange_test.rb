require "test_helper"

class StackExchangeTest < Minitest::Test
  def setup
    @stack_exchange = StackExchange.new("stackoverflow", 1)
    # puts stack_exchange.questions
    # puts stack_exchange.users
  end

  def test_questions
    VCR.use_cassette("stack_exchange.questions") do
      response = @stack_exchange.questions

      assert response.parsed_response.is_a?(Hash)
      assert_equal 200, response.code
    end
  end

  def test_users
    VCR.use_cassette("stack_exchange.users") do
      response = @stack_exchange.users

      assert response.parsed_response.is_a?(Hash)
      assert_equal 200, response.code
    end
  end
end