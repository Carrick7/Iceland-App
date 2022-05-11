class Location < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1, maximum: 20}
  validates :body, presence: true, length: {minimum: 5, maximum: 1000}
  mount_uploader :image, LocationPhotoUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
end
