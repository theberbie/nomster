class Photo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  belongs_to :place
  belongs_to :user


end
