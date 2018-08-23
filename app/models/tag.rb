class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def most_popular
    pic_tag_array = tag.pictures.length
    pic_tag_array.max(3)
  end

  
end
