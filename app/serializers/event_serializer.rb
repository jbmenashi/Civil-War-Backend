class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :info, :link
  has_many :circles
end
