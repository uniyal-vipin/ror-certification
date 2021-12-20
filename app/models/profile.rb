class Profile < ApplicationRecord
  mount_uploader :profile_image, ProfileImageUploader
  belongs_to :user, optional: true
  validate :image_size_validation

  def image_size_validation
    return unless profile_image?
    errors[:profile_image] << "should be less than 1MB" if profile_image.size > 1.megabytes
  end
end