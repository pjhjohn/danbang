class Room < ActiveRecord::Base
  belongs_to :user
  mount_uploader :representative, RoomImageUploader
  mount_uploader :image1, RoomImageUploader
  mount_uploader :image2, RoomImageUploader
  mount_uploader :image3, RoomImageUploader
  mount_uploader :image4, RoomImageUploader
  mount_uploader :image5, RoomImageUploader
end
