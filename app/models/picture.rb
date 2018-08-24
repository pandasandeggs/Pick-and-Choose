class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :picture_tags, :dependent => :destroy
  has_many :tags, through: :picture_tags
end
