class Post < ApplicationRecord
  validates :body, presence: true

  # counter_cache column: :posts_count
  # usage:
  # reset_counter: Writer.reset_counters(id, :posts_count)
  belongs_to :writer, counter_cache: true, touch: true
  # ใส่ counter_cache จะได้คอลัมน์ใหม่ชื่อ posts_count แล้วต้องรัน migrate ด้วย เวลาที่ใช้ฟีเจอร์นี้
  # ถ้าอยากเปลี่ยนชื่อ column ให้ใช้แบบนี้
  # belongs_to :writer, counter_cache: :awesome_posts_count

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_many :views, class_name: "PostView"

  include ContentEditable

  # before_initialize :assign_default_title

  # def assign_default_title
  #   self.title = "untitled"
  # end

  after_create_commit :broadcast_prepend_to_posts
  def broadcast_prepend_to_posts
    broadcast_prepend_to(
      "post_lists",
      partial: "posts/post_row",
      locals: { post: self },
      target: "posts"
    )
  end

  def writer_name
    writer.name
  end

  def tags_string
    tags.map(&:name)
        .join(", ")
    # tags.pluck(:name)
        # .join(", ")
  end

  # attr_accessor :tags_string -- เราจะไม่ใช้วิธีนี้ เพราะว่าเราต้องเอา string มา split ก่อน
  def tags_string=(value)
    tags.destroy_all

    words = value.split(",")
                 .map { |s| s.strip.downcase }

    # Prevent saving duplicates in the join table
    # existing_tags = tags.pluck(:name)
    # words = words - existing_tags

    words.each do |word|
      tag = Tag.find_or_create_by(name: word)
      tags << tag
    end
  end

  # Post.joins(:writer).where("writers.id" => 2)
  # Post.joins(:writer).group("writers.id")
  # Post.joins(:tags).group("tags.name")
end
