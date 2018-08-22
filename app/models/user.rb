class User < ApplicationRecord
  has_many :pictures
  has_many :comments
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true 
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
end
