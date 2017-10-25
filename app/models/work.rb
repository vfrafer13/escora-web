class Work < ApplicationRecord
  mount_uploader :certificate_picture, PictureUploader

  STATUS_LIST = ["Buen estado", "Deterioro natural", "Deterioro controlado",
                 "Delicada", "Completamente deteriorada", "Estado crítico"]
  SITUATION_LIST = ["En exposición", "En resguardo",
                    "En préstamo", "En restauración"]
  ORIGIN_LIST = ["Compra", "Donación", "Comodato"]
end
