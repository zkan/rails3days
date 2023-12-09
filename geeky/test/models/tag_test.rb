require "test_helper"

class TagTest < ActiveSupport::TestCase
  def setup
    @one = tags(:one)
  end

  def test_has_many_posts
    assert_equal 1, @one.posts.count
  end
end
