class CreatePostViewsJob < ApplicationJob
  queue_as :low

  def perform(post_id:)
    post = Post.find(post_id)
    post.views.create
  end
end
