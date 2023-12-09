require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @one = posts(:one)
    @john = writers(:john)
  end

  def test_belongs_to
    assert_equal @john.id, @one.writer.id
  end

  def test_count
    assert_equal 12, Post.count
  end

  def test_title
    assert_equal "My Post 1", @one.title
  end

  def test_body
    assert_equal "My Text 123456789", @one.body
  end

  def test_body_presence
    @one.body = "123456789"

    valid = @one.valid?
    message = @one.errors.first.full_message

    assert_equal false, valid
    assert_equal "Body must have more than 10 characters", message
  end

  def test_body_nil
    @one.body = nil

    valid = @one.valid?
    message = @one.errors.first.full_message

    assert_equal false, valid
    assert_equal "Body can't be blank", message
  end
end
