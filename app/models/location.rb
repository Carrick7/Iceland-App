class Location < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :body, presence: true, length: {minimum: 5, maximum: 1000}
  mount_uploader :image, LocationPhotoUploader
  has_one_attached :image
end
