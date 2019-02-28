class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :info, :link
  has_many :pinpoints
end
