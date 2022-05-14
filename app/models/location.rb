class Location < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1, maximum: 50}
  validates :body, presence: true, length: {minimum: 5, maximum: 50000}
  mount_uploader :image, LocationPhotoUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
end
