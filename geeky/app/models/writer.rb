class Writer < ApplicationRecord
  # has_many :posts

  # เป็นการที่เราลบ writer แล้ว ให้ลบ post ทิ้งให้หมดด้วย
  has_many :posts, dependent: :destroy

  # Below is a class method -> Writer.count
  # def self.select_lists
  # end

  # Recommend this เพราะว่าเราอาจจะมีหลาย class method จะได้อยู่ใน block เดียวกัน
  class << self
    def select_lists
      # all.map { |writer| [writer.name, writer.id] }
      all.map do |writer|
        [writer.name, writer.id]
      end
    end
  end

  # Below is an instance method -> writer.display_name
  def display_name
  end

  validates :name, uniqueness: true
end
