require "test_helper"

class WriterTest < ActiveSupport::TestCase
  def setup
    @writer = writers(:john)
  end

  def test_count
    assert_equal Writer.count, 2
  end

  def test_name
    assert_equal @writer.name, "John"
  end

  def test_age
    assert_equal @writer.age, 18
  end

  def test_has_many_posts
    assert_equal @writer.posts.count, 1
  end
end
