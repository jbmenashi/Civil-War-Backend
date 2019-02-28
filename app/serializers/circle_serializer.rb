class CircleSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :event_id, :lat, :long
  belongs_to :day
  belongs_to :event
end
