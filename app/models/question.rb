class Question < ApplicationRecord
  belongs_to :level
  has_many :choices

  mount_uploader :image, ImageUploader
end
