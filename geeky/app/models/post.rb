class Post < ApplicationRecord
  validates :body, presence: true
  belongs_to :writer
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  include ContentEditable

  def writer_name
    writer.name
  end
end
