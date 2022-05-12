class Location < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :body, presence: true, length: {minimum: 5, maximum: 50000}
  mount_uploader :image, LocationPhotoUploader
  belongs_to :user
end
