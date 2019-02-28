class Day < ApplicationRecord
  has_many :circles
  has_many :events, through: :circles
  has_many :pinpoints
  has_many :subjects, through: :pinpoints
end
