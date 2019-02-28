class PinpointSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :subject_id, :lat, :long
  belongs_to :day
  belongs_to :subject
end
