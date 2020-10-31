class Question < ApplicationRecord
  belongs_to :level
  has_many :choices
end
