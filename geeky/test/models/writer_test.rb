require "test_helper"

class WriterTest < ActiveSupport::TestCase
  def setup
    @john = writers(:john)
    @kan = writers(:kan)
  end

  def test_count
    assert_equal 2, Writer.count
  end

  def test_name
    assert_equal "John", @john.name
  end

  def test_age
    assert_equal 18, @john.age
  end

  def test_has_many_posts
    assert_equal 1, @john.posts.count
  end

  def test_select_lists
    list = [[@john.name, @john.id], [@kan.name, @kan.id]].sort_by { |name, id| id }
    assert_equal list, Writer.select_lists
  end

  def test_unique_name
    writer = Writer.new(name: "John", age: 21)

    assert_equal false, writer.valid?
  end
end
