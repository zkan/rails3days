require "test_helper"

class TagTest < ActiveSupport::TestCase
  def setup
    @one = tags(:one)
  end

  def test_has_many_posts
    assert_equal 1, @one.posts.count
  end

  def test_tag_destroy
    destroy = @one.destroy

    assert_equal @one, destroy
  end
end
