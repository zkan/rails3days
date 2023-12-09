class Post < ApplicationRecord
  validates :body, presence: true
  belongs_to :writer

  include ContentEditable

  def writer_name
    writer.name
  end
end
