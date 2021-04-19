class Player < ApplicationRecord
  attribute name:player_picture, cast_type :string, default: ''

  has_one_attached :picture

  def has_picture?
    Fike.exist?(ActiveStorage::Blob.service.path_for(picture.key))
  end
end
