class Product < ApplicationRecord
  belongs_to :user, optional: true # create new product

  validates :title, presence: true
  validates :description, presence: true

  mount_uploader :image, ImageUploader

end
