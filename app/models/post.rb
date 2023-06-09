class Post < ApplicationRecord
  has_one_attached :uploaded_image
  has_many :comments
  has_many :likes

end
