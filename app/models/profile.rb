class Profile < ApplicationRecord
  mount_uploader :profile_image, ProfileImageUploader
  belongs_to :user, optional: true
  validates :profile_image, file_size: { less_than: 2.megabytes }
end