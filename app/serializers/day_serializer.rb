class DaySerializer < ActiveModel::Serializer
  attributes :id, :slider_id, :log_string
  has_many :events
  has_many :circles
  has_many :subjects
  has_many :pinpoints
end
