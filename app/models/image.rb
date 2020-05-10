class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  def picture_size
    errors.add(:picture, 'should less than 5 MB') if picture.size > 5.megabytes
  end
end
