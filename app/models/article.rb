class Article < ApplicationRecord
  include Visible

  has_many :comments
  has_one_attached :image
  has_many_attached :pictures

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :image,presence: true
end 
