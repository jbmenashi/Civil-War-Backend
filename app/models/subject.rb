class Subject < ApplicationRecord
  has_many :pinpoints
  has_many :days, through: :pinpoints

end
