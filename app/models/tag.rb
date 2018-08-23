class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def self.most_popular
    popular = Tag.all.sort do | tag_1, tag_2 |
      if ((tag_1.pictures.length) > (tag_2.pictures.length))
        -1
      elsif ((tag_1.pictures.length) < (tag_2.pictures.length))
        1
      else
        0
      end
    end
    names = popular.map {|x| x.name}
    names[0..2]
  end

  def self.trending
    trend = Tag.all.sort do | tag_1, tag_2 |
      if ((tag_1.pictures.length) > (tag_2.pictures.length))
        -1
      elsif ((tag_1.pictures.length) < (tag_2.pictures.length))
        1
      else
        0
      end
    end
    trend.first.name
  end

end #class
