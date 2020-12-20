class Word < ApplicationRecord
  belongs_to :level

  mount_uploader :image, ImageUploader
end
