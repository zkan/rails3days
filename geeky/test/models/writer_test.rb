require "test_helper"

class WriterTest < ActiveSupport::TestCase
  def setup
    @john = writers(:john)
    @kan = writers(:kan)
  end

  def test_count
    assert_equal Writer.count, 2
  end

  def test_name
    assert_equal @john.name, "John"
  end

  def test_age
    assert_equal @john.age, 18
  end

  def test_has_many_posts
    assert_equal @john.posts.count, 1
  end

  def test_select_lists
    list = [[@john.name, @john.id], [@kan.name, @kan.id]].sort_by {|name, id| id}
    assert_equal Writer.select_lists, list
  end
end
