class Post < ApplicationRecord
  validates :body, presence: true
  belongs_to :writer
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  include ContentEditable

  def writer_name
    writer.name
  end

  def tags_string
    tags.map(&:name)
        .join(", ")
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
end
