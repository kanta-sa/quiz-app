class Rank < ApplicationRecord
  belongs_to :level
  belongs_to :user
end
