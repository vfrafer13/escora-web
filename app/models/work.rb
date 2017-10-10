class Work < ApplicationRecord
  belongs_to :warehouse
  belongs_to :collection
  mount_uploader :certificate_picture, PictureUploader
end
