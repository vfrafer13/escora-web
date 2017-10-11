class Work < ApplicationRecord
  mount_uploader :certificate_picture, PictureUploader
end
