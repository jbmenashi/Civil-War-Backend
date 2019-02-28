class Event < ApplicationRecord
  has_many :circles
  has_many :days, through: :circles
end
