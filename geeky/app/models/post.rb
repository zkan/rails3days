class Post < ApplicationRecord
  belongs_to :writer
  validates :body, presence: true

  # Custom validation uses "validate" without s
  validate :body_more_than_10

  def writer_name
    writer.name
  end

  def body_more_than_10
    if body.nil? || body.length < 10
      errors.add(:body, "must have more than 10 characters")
    end
  end
end
